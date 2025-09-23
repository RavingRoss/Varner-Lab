# Current Projects
## SiPMT revA/B:
Includes work on a PCB upgrade to give inputs for a LASER using pogo-pins to activate the given 8 CH ASIC IC chip. 

---

## Waveforms:
Performed testing using dummy data taken from the TOP boardstack in the lab, the waveforms are evenly distributed and plotted.

---

## TOP-BS:
Data taken from the TOP boardstack in Varner lab, testing the 64 SiPM PCB using PCIE40 and KLM VME at UH. Includes advanced version of waveforms parsing script and BS cooling plate upgrades. 

---

## HLS4ML:
This is a project from PHYS 476L which uses the Nexys Video FPGA board for implementation. A keras NN model takes waveform data and predicts the distribution using the mean, sigma, pedestal, and height of the event. This model is then put onto the FPGA by converting it to C using hls4ml. Vitis-HLS is then used to make a Vivado project to implement onto the FPGA.
