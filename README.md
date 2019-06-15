# RTL_QAM
The project is designed using VHDL to realise the 4-QAM modulation.
#### Design Software:  
- GHDL 
- Scansion
- Xilinx Vivado Webpack

# RTL_QAM
The project is designed using VHDL to realise the M-QAM modulation.
#### Design Software:  
- GHDL 
- Scansion
- Xilinx Vivado Webpack

> system structure

### Top-level directory structure

    .
    ├── QAM_Vivado              # Vivado Project (Timing constraints, source codes also included withing the project)
    ├── docs                    # Documentation files
    ├── ghdl_src_DUT            # files to be tested using ghdl (for test run ./compile)
    ├── sim                     # Simulation and Verification scripts
    │   ├── matlab              # qam constellation and modulator behaviour verification
    │   └── gnuradio            # Constellation Verification in RealTime using USRP.    
    ├── src                     # VHDL Source files
    ├── tb                      # VHDL testbench files
    ├── waveforms               # vcd files to view waveforms using GTKWave or Scnasion
    └── README.md

