@echo off
setlocal enabledelayedexpansion
set STM32CubeProgrammerPath="STM32_Programmer_CLI"
set FirmwarePath="fw_fabrica_franzininhoC0.elf"
set PortName=COM34
set BaudRate=115200
set nBOOT_SEL=0x00
set nBOOT0=0x00


:loop

echo Gravando firmware no STM32 via UART...

echo Conecte a placa STM32 e pressione Enter para continuar...
pause > nul

echo Gravando a placa...

rem Inicia a comunicação com o STM32CubeProgrammer
rem %STM32CubeProgrammerPath% -c port=%PortName% mode=Normal reset=HWrst

rem Apaga o chip STM32
%STM32CubeProgrammerPath% -c port=%PortName% -e all

rem Define os bytes de opção
%STM32CubeProgrammerPath% -c port=%PortName% -ob nBOOT_SEL=%nBOOT_SEL% nBOOT0=%nBOOT0%

    
rem Grava o firmware
%STM32CubeProgrammerPath% -c port=%PortName% -w %FirmwarePath% 0x08000000  -s  0x08000000


    
echo Placa gravada com sucesso. Pressione Ctrl+C para interromper o processo.

goto loop
