@echo off
set xv_path=C:\\Xilinx2\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto f1597062dfcc45ff9b06bfd4e730112d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot adder_tb_behav xil_defaultlib.adder_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
