

ghdl -a ddfs.vhd ddfs_lut_4096.vhd FA_N.vhd PhaseGenerator.vhd full_adder.vhd DDFS_tb.vhd
ghdl -e DDFS_tb
ghdl -r DDFS_tb --vcd=sincos.vcd
