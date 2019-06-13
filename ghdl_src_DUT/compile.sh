#!/bin/bash
#Created to verify and compile vhdl files using ghdl compiler under OS X
#Project: 4-QAM Modulator 
#Author: Astro

echo "******************"
echo "START Of Simulation"
echo "******************"


echo "---------------------------------------------------"
printf "Processing Source Files:\n\t | ddfs.vhd\n\t | ddfs_lut_4096.vhd\n\t | full_adder.vhd\n\t | FA_N.vhd\n\t | IQ_Adder.vhd\n\t | qam_mod.vhd\n\t | qam_mapper.vhd\n"
printf "Processing testbench Files\n\t | tb_QAM_Hierarchical.vhd\n"
echo "---------------------------------------------------"
echo "[DEBUG]: Setting Up Path"
export PATH=$PATH:/Users/beapple/Downloads/ghdl-0.36-macosx-mcode/bin
echo "[DEBUG]: Cleaning binaries"
ghdl --clean


echo "[DEBUG]: Simulation Time: @1msec"
echo "[DEBUG]: Waveform Output: qam_mod.vcd"


#ghdl -a <files.vhd>   Analyze FILEs
if ghdl -a ddfs.vhd ddfs_lut_4096.vhd FA_N.vhd PhaseGenerator.vhd full_adder.vhd qam_mod.vhd qam_mapper.vhd IQ_Adder.vhd tb_QAM_Hierarchical.vhd 
	 then
		echo "[DEBUG]: GHDL -a succeeded"
else 
	echo "FAILED"
fi


#ghdl -e <testbench_Entity_Name>  Elaborate UNIT Under Test 
if ghdl -e tb_QAM_Hierarchical
	 then
		echo "[DEBUG]: GHDL -e, testbench processing succeeded"

else
	echo "[ASSERT]: ghdl -e tb_QAM_Hierarchical FAILED"
fi


#ghdl -r <testbench_Entity_Name>  Run UNIT Under Test 
#Generate @qam_mod.vcd
#vcd files is verified using Scansion or GTKWave
if ghdl -r tb_QAM_Hierarchical --stop-time=1000000ns --vcd=qam_mod.vcd
	 then
		echo "[DEBUG]: ghdl -r tb_QAM_Hierarchical --stop-time=1000000ns --vcd=SIM_QAM_MOD.vcd succeeded"

else
	echo "[ASSERT]: ghdl -r tb_QAM_Hierarchical --stop-time=1000000ns --vcd=SIM_QAM_MOD.vcd FAILED"
fi

echo "******************"
echo "End Of Simulation"
echo "******************"
