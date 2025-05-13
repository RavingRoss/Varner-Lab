import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
from tensorflow.keras.models import Sequential, Model, load_model # type: ignore
from tensorflow.keras.layers import Dense # type: ignore
from tensorflow.keras import Input # type: ignore
from tensorflow.keras.optimizers import Adam # type: ignore
from tensorflow.keras.losses import MeanSquaredError # type: ignore
from tensorflow.keras.metrics import MeanAbsoluteError # type: ignore
import csv
import hls4ml
from hls4ml.model.profiling import numerical
from IPython.display import Image
import pandas as pd
import os

import absl.logging
absl.logging.set_verbosity(absl.logging.ERROR)

def build_hls_model():
    # This requires the environment variable for Xilinx Vivado being included.
    # For instance, you need to run:
    # source /tools/Xilinx/Vivado/2019.2/settings64.sh
    # Since we set csim and cosim as True to start simulation, it takes few min.
    hls_model = final_test()
    hls_model.build(csim=True, cosim=True, synth=True)
    # The Vivado HLS project will be created
    hls4ml.report.read_vivado_report('hls4ml_prj')
    
def final_test():
    # Final test function to run the entire process
    hls_model, keras_model, keras_prediction, keras_results, x_testing, y_testing = compile_hls4ml()
    hls_prediction = []
    hls_results = []
    keras_mean = keras_prediction['Keras Mean']
    keras_sigma = keras_prediction['Keras Sigma']
    keras_pred = pd.concat((keras_mean, keras_sigma))
    
    print("Running the final test...")
    # Predicting the waveform using the HLS model
    fig, axs = plt.subplots(5, 2, figsize=(15, 20))
    axs = axs.flatten()
    
    for i in range(10):
        testing = np.array(x_testing.iloc[i].values)
        testing = testing.reshape(-1)
        
        # Make prediction
        print(testing)
        hls_pred = hls_model.predict(testing)
        
        hls_prediction.append(hls_pred)
        print('HLS Prediction:', hls_pred)
        print("Keras Predication:", keras_pred.values)
        
        # Getting the metrics for the HLS prediction
        mse = mean_squared_error(y_testing.iloc[i].values, hls_pred)
        mae = mean_absolute_error(y_testing.iloc[i].values, hls_pred)
        r2 = r2_score(y_testing.iloc[i].values, hls_pred)

        hls_results.append({
                'MSE' : mse, 
                'MAE' : mae, 
                'R2' : r2
            })
        
        # Grab input
        hls_mean, hls_sigma = hls_pred
        
        print(hls_mean, hls_sigma)
        print(keras_mean, keras_sigma)
        
    #plt.savefig('Final-Waveform-Prediction.png', dpi=300 , bbox_inches='tight')
    #plt.show()
    
    '''hls_pred_df = pd.DataFrame(hls_prediction)
    hls_results_df = pd.DataFrame(hls_results)
    # Saving the HLS prediction to a CSV file
    final_prediction = pd.concat([hls_pred_df, keras_pred], axis=1)
    final_prediction.columns = ['HLS_Mean', 'HLS_Sigma', 'HLS_Height', 'HLS_Pedestal', 
                                'Keras_Mean', 'Keras_Sigma', 'Keras_Height', 'Keras_Pedestal']
    final_prediction.to_csv('Final-Prediction.csv', index=False)
    print("Final prediction saved to Final-Prediction.csv")
    print(final_prediction)
    # Saving the results to a CSV file
    final_results = pd.concat([hls_results_df, keras_results], axis=1)
    final_results.columns = ['HLS_MSE', 'HLS_MAE', 'HLS_R2', 'Keras_MSE', 'Keras_MAE', 'Keras_R2']
    final_results.to_csv('Final-Results.csv', index=False)
    print("Final results saved to Final-Results.csv")
    print(final_results)'''
    
    plt.figure(figsize=(6,6))
    numerical(model=keras_model, hls_model=hls_model)#, X=x_testing.values)
    plt.savefig('HLS-Configuration.png', dpi=300 , bbox_inches='tight')
    
    return hls_model
    
def compile_hls4ml(model_path='KERAS_model.h5'):
    # Making the HLS model
    if os.path.exists(model_path):
        print(f"Loading the model from {model_path}...")
        # Load the Keras model
        model = load_model(model_path)
        # Load the results and test data
        results = pd.read_csv('Keras-Results.csv')
        x_testing = pd.read_csv('Keras-Test.csv')
        keras_pred = pd.read_csv('Keras-Prediction.csv')
        y_testing = pd.read_csv('Test-Waves.csv')
    else:
        print("Model not found. Training a new model...")
        # Train the model
        model, keras_pred, results, x_testing, y_testing = predict_model()

    print("Creating HLS model...")
        
    # Convert the Keras model to HLS
    print(model.summary())
    config = hls4ml.utils.config_from_keras_model(model, granularity='model', backend='Vitis')
    
    # Global defaults
    config['Model']['Precision'] = 'ap_fixed<24,12>' # trial and error
    config['Model']['ReuseFactor'] = 32

    # Enable tracing for all layers
    #for layer in config['LayerName'].keys():
        #config['LayerName'][layer]['Trace'] = True
    
    # Replace plotting.print_dict(config) with:
    print_dict(config)
    
    hls_model = hls4ml.converters.convert_from_keras_model(
        model, hls_config=config, 
        output_dir='hls4ml_prj', 
        part='xc7a200tsbg484-1',
        input_data_tb = "Input.dat",
        output_data_tb = "Output.dat",
        backend='vitis'
        # cpp_flags='-D__NO_STD_COMPLEX__'
    )

    # Displaying the model structure
    hls4ml.utils.plot_model(hls_model, show_shapes=True, show_precision=True, to_file='hls_model.png')
    Image('hls_model.png')
    
    # Compile the HLS model
    print("Compiling the HLS model...")
    try:
        hls_model.compile()
    except Exception as e:
        print(f"Compilation failed: {e}")
        raise
    
    return hls_model, model, keras_pred, results, x_testing, y_testing

def print_dict(d, indent=0):
    """Recursively prints a dictionary in a readable format."""
    for key, value in d.items():
        print('  ' * indent + str(key) + ':', end=' ')
        if isinstance(value, dict):
            print()
            print_dict(value, indent + 1)
        else:
            print(value)

def predict_model():
    # Predicting the waveform
    model, x_test, y_test = train_model()
    x_testing = []
    y_testing = []
    results = []
    keras_prediction = []
    prediction = []
    
    print("Predicting the waveform...")
    
    fig, axs = plt.subplots(1, 2, figsize=(12, 6))
    axs = axs.flatten()
    l = 0
    
    for i in range(len(x_test)):
        l += 1
        testing = x_test[i][:].reshape(1, 100)
        x_testing.append(testing)
        # Make prediction
        pred = model.predict(testing)
        keras_prediction.append(pred[0])

        # Grab input
        pred_mean, pred_sigma = pred[0]
        true_mean, true_sigma = y_test[i]
        prediction.append({'True Mean': true_mean, 
                            'True Sigma': true_sigma,
                            'Keras Mean': pred_mean,
                            'Keras Sigma': pred_sigma})

        # Showing the metrics for the model prediction
        mse = mean_squared_error(y_test[i], pred[0])
        mae = mean_absolute_error(y_test[i], pred[0])
        r2 = r2_score(y_test[i], pred[0])
        
        y_testing.append(y_test[i])
        
        results.append({
                'MSE' : mse, 
                'MAE' : mae, 
                'R2' : r2
            })
        
        axs[0].scatter(true_mean, pred_mean, color='blue', alpha=0.6, zorder=1)
        axs[1].scatter(true_sigma, pred_sigma, color='blue', alpha=0.6, zorder=1)
        print(f'Iteration: {l}')
        
    # Add reference y = x lines
    mean_min = min(y_test[:,0].min(), pred[:,0].min())
    mean_max = max(y_test[:,0].max(), pred[:,0].max())
    axs[0].plot([mean_min, mean_max], [mean_min, mean_max], 'r--', zorder=2)
    axs[0].set_xlabel('True Mean')
    axs[0].set_ylabel('Predicted Mean')
    axs[0].set_title('Predicted vs. True Mean')
    axs[0].grid(True, zorder=0)

    sigma_min = min(y_test[:,1].min(), pred[:,1].min())
    sigma_max = max(y_test[:,1].max(), pred[:,1].max())
    axs[1].plot([sigma_min, sigma_max], [sigma_min, sigma_max], 'r--', zorder=2)
    axs[1].set_xlabel('True Sigma')
    axs[1].set_ylabel('Predicted Sigma')
    axs[1].set_title('Predicted vs. True Sigma')
    axs[1].grid(True, zorder=0)
    
    plt.tight_layout()
    
    plt.savefig('Keras-Waveform-Prediction.png', dpi=300 , bbox_inches='tight')
    plt.show()
    
    # Saving test file and Keras results to a CSV file
    print("Saving the results...")
    x_testing_array = np.vstack(x_testing)  # Convert list of arrays to a single array
    x_testing_df = pd.DataFrame(x_testing_array)
    x_testing_df.to_csv('Keras-Test.csv', index=False)
    results_df = pd.DataFrame(results)
    results_df.to_csv('Keras-Results.csv', index=False)
    prediction_df = pd.DataFrame(prediction)
    prediction_df.to_csv('Keras-Prediction.csv', index=False)
    y_testing_df = pd.DataFrame(y_testing)
    y_testing_df.to_csv('Test-Waves.csv', index=False)
        
    # Creating txt files to later use for HLS Csimulation
    keras_prediction = np.array(keras_prediction)
    with open('Input.dat', 'w') as f:
        csv.writer(f, delimiter=',').writerows(x_test)
    with open('Output.dat', 'w') as f:
        csv.writer(f, delimiter=',').writerows(keras_prediction)
    
    return model, prediction_df, results_df, x_testing_df, y_testing_df

def train_model(epochNum=40, verboseVal=1):
    # Training the model using verbose=0 to suppress output
    # If you want to see the training process, set verbose=1
    
    x_train, x_test, y_train, y_test = preprocess_data()
    #model, callbacks = build_model()
    model = build_model()
    
    print("Training the model...")
    model.fit(x_train, 
            y_train, 
            epochs=epochNum, 
            validation_split=0.2,
            verbose=verboseVal)

    # Save the model for later use using 
    print("Saving the model...")
    model.save('KERAS_model.h5')
    
    # Plotting the epochs and loss/val_loss
    epochs = model.history.epoch
    loss = model.history.history['loss']
    val_loss = model.history.history['val_loss']

    # Plotting training loss
    plt.figure(figsize=(8,6))
    plt.plot(epochs, loss, label='Training Loss', color='blue')
    plt.plot(epochs, val_loss, label='Validation Loss', color='red')
    plt.xlabel('Epochs')
    plt.ylabel('Loss')
    plt.title('Loss vs Epochs')
    plt.legend()
    plt.savefig('Loss-vs-Epoch.png', dpi=300 , bbox_inches='tight')
    #plt.show()
    
    return model, x_test, y_test

def build_model():
    # Building the model
    print("Building the model...")
    # Define the model
    model = Sequential([
        Input(shape=(100,)), # Input the full waveform
        Dense(64, activation='relu'),
        Dense(128, activation='relu'),
        Dense(2)]) # Output the waveform parameters
    model.compile(optimizer=Adam(learning_rate=0.001), 
                loss=MeanSquaredError(), 
                metrics=[MeanAbsoluteError()])
    model.summary()
    
    return model

def preprocess_data(trainFile='waveform_data_0.npy', testFile='waveform_data_1.npy'):
    # Loading the data
    train = np.load(trainFile)
    test = np.load(testFile)

    # Split into input and output for features and labels
    x_train = train[:,4:] 
    x_test = test[:,4:]  
    y_train = train[:,:2]
    y_test = test[:,:2]   
    
    # Plotting the average of the waveforms
    plot_x = []
    plot_y = []
    for i in range(100):
        x = np.mean(x_train[:,i])
        plot_x.append(x)
        y = np.mean(x_test[:,i])
        plot_y.append(y)
        
    plt.figure(figsize=(8,6))
    plt.plot(plot_x, '-', label='Average of Training Data', color='blue')
    plt.plot(plot_y, '-', label='Average of Testing Data', color='red')
    plt.xlabel('Sample Number')
    plt.ylabel('ADC Counts')
    plt.title('Comparison of Average Waveforms')
    plt.legend()
    plt.savefig('Avg-wv-Data.png', dpi=300 , bbox_inches='tight')
    #plt.show()
    return x_train, x_test, y_train, y_test

if __name__ == '__main__':
    predict_model()
