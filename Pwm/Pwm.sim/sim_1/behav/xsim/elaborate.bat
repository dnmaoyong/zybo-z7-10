@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Sep 05 00:32:25 +0300 2019
REM SW Build 2580384 on Sat Jun 29 08:12:21 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 5d941dd7b3b34ee997ac99594c1eb4fe --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot PwmModule_behav xil_defaultlib.PwmModule -log elaborate.log"
call xelab  -wto 5d941dd7b3b34ee997ac99594c1eb4fe --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot PwmModule_behav xil_defaultlib.PwmModule -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0