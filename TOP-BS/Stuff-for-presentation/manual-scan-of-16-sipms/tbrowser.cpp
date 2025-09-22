#include <iostream>
#include <TFile.h>
#include <TChain.h>
#include <TTree.h>

TFile* new = new TFile((char*) "2025-05-28.133041.waveforms");
TBrowser *b = new TBrowser("My Browser", 800, 600);
b->Add(new); // Add the entire file to the browser
b->Close();

