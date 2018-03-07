@echo off
set xv_path=C:\\Xilinx2\\Vivado\\2017.2\\bin
call %xv_path%/xsim adder_tb_behav -key {Behavioral:sim_1:Functional:adder_tb} -tclbatch adder_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
