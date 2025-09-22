import uproot
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

class Waveforms :

    def __init__ (self, filename="2024-04-17.135507.root") : # Initialize the class
        self.file = uproot.open(filename) # Open the ROOT file
        self.df = self.file['waveforms'].arrays(library="pd") # Get the data from the TTree
        print(self.df.columns)
        self.propCycle = plt.rcParams['axes.prop_cycle']
        self.colors = self.propCycle.by_key()['color'] # Get the colors from the propCycle
        self.N = 32 # Number of events to plot
        self.eventNumber = list(set(self.df.event_number))[:self.N] # Get the first N event numbers
        self.carriers = [0, 1, 2, 3] # List of carriers, there are only 4 on each boardstack
        self.asics = [0, 1, 2, 3] # List of asics, there are only 4 on each carrier
        self.channels = 8 # Number of channels per asic

    def gettingWaveforms(self) : # Function to get the waveforms
        fig, ax = plt.subplots(figsize=(30,15))
        for ev in self.eventNumber : # Loop through the event numbers
            #print(f'event number: {ev}')
            df_ev = self.df.query("event_number==%d" % ev) # Get the data for the event number and store it in a dataframe
            for car in self.carriers : # Loop through the carriers
                #print(f'carrier number: {car}')
                df_car = df_ev.query('carrier==%d' % car) # Get the data for the carrier and store it in a dataframe
                for a in self.asics : # Loop through the asics
                    #print(f'asic number: {a}')
                    df_a = df_car.query('asic==%d' % a) # Get the data for the asic and store it in a dataframe
                    for ch in range(self.channels) : # Loop through the channels
                        #print(f'channel number: {ch}')
                        df_ch = df_a.query('channel==%d' % ch) # Get the data for the channel and store it in a dataframe
                        y = np.concatenate([df_ch.waveform.values[0], df_ch.waveform.values[1]]) # Stitch together the two halves of the waveform
                        if np.max(y) < 50 : # Cut channels without peaks over 50 ADC counts
                            continue
                        seq_ch = car*32 + a*8 + ch # Calculate the sequence number of the channel
                        threshold = 40 # Arbituary threshold for the separation between channels
                        sampleNumber = 64 # Number of samples in the waveform so that the x and y arrays are the same length
                        y = y + seq_ch*threshold # Put some separation between channels for a visual effect
                        x0 = df_ch.physical_window.values[0]*sampleNumber # Get the starting point of the waveform
                        x = np.arange(x0, x0 + sampleNumber) # Create an array of the x values
                        if ev == 1 :
                            label = f'c{car} a{a} ch{ch} ({seq_ch})' # Create a label for each waveform > 50 ADC counts
                        else :
                            label = None
                        ax.plot(x, y, linestyle='--', color=self.colors[seq_ch % 10], label=label) # Plot all the waveforms which fit the condition

        # Customizing the plot
        ax.legend(bbox_to_anchor=(.96, 1.008), loc='upper left', fontsize=15) # Add a legend to the plot
        plt.title(f"{self.N} Channels with Hits Over 50 ADC Counts", fontsize=22, fontweight='bold')
        plt.ylabel("Amplitude", fontsize=15, fontweight='bold')
        plt.xlabel("RF Bucket #", fontsize=15, fontweight='bold')

        # Customize x-axis ticks to include 1024
        '''current_ticks = ax.get_xticks().tolist()  # Get current x-axis ticks
        current_ticks.append(1024)  # Add 1024 to the list of ticks
        ax.set_xticks(current_ticks)  # Set the new list of ticks
        ax.set_xticklabels([str(int(tick)) for tick in current_ticks])  # Set the tick labels
        ax.set_xlim([0, 2000])'''
        ax.set_xticks([1024])  # Set the x-axis ticks to only include 1024
        ax.set_xticklabels(['1024'], fontsize=15)  # Set the tick labels to only show 1024
        # Saving the plot to pdf
        plt.savefig("wvs-w-hits-over-50ADC.pdf")

def main() :
    wv = Waveforms()
    pd.set_option('display.max_rows', None) # So we can see all the rows
    pd.set_option('display.max_columns', None) # Uncomment this line if you want to see all columns
    # Add any additional print statements or function calls here if needed
    #print(wv.df.head(100))
    wv.gettingWaveforms()

if __name__ == "__main__" :
    main()
