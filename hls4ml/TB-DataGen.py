import numpy as np
data = np.loadtxt('Python-Simple/Input.dat', delimiter=',')
data_values = data[4321]

'''
concat_fm = f"input_1 <= input_1_{i}"
'''

'''for i in range(100):
    print(f"reg [18:0] input_1_{i};")'''

with open("stimulus_data.txt", "w") as f:
    # Generate input_1_0, input_1_1, ...
    for i in range(100):
        f.write(f"reg [18:0] input_1_{i};\n")
    for i, val in enumerate(data_values):
        bin_val = format(int(val), '014b')
        f.write(f"input_1_{i} = 18'b{bin_val}0000;\n")
    
    f.write("\n// Concatenate all into one 1800-bit input_1\n")
    concat = ', '.join([f"input_1_{i}" for i in reversed(range(len(data_values)))])
    f.write(f"input_1 = {{{concat}}};\n")
