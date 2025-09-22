#import uproot as rt
import ROOT as rt
rootFile = rt.TFile("path_to_your_file.waveforms")
print(rootFile)
tree = rootFile.Get("waveformData") # Assuming your TTree is named 'waveformData'
entries = tree.GetEntriesFast() # Get the total number of entries in the 
tree
for i in range(entries): # Loop over each entry in the tree
    event = tree.GetEntry(i) # Get the ith entry
    # Process the waveform data as needed...