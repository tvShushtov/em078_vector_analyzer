@ REM ###################################################
@ REM #                                                 #
@ REM # Altera SoC Embedded Command Shell               #
@ REM #                                                 #
@ REM # Execute this script to setup an environment for #
@ REM # using the Altera Embedded Command Shell         #
@ REM #                                                 #
@ REM #                                                 #
@ REM # Copyright (c) 2016 Altera Corporation           #
@ REM # All Rights Reserved.                            # 
@ REM #                                                 #
@ REM ###################################################

@ REM ######################################
@ REM # Ensure extensions are enabled
@ setlocal enableextensions

@ REM ######################################
@ REM # Discover the root embedded directory

@ set _SOCEDS_ROOT=C:/altera/16.0/embedded/
@ set CURR_FOLDER_PATH=%~dp0
@ set CURR_FOLDER_PATH=%CURR_FOLDER_PATH:\=/%
@ echo Current directory:
@ echo ^> %CURR_FOLDER_PATH%

@ REM ######################################


@ REM ######################################
@ REM # Variable to ignore <CR> in DOS
@ REM # line endings
@ set SHELLOPTS=igncr

@ REM ######################################
@ REM # Variable to ignore mixed paths
@ REM # i.e. G:/$SOPC_KIT_NIOS2/bin
@ set CYGWIN=nodosfilewarning

@ REM ######################################
@ REM # Allow user to override HOME,
@ REM # otherwise provide sensible default
@ if not defined HOME if defined USERPROFILE set HOME=%USERPROFILE%

@ REM ######################################
@ REM # Launch cygwin soceds command shell

:run_soceds_command_shell

@ "%_SOCEDS_ROOT%host_tools/cygwin/bin/bash.exe" --login -c '"%_SOCEDS_ROOT%embedded_command_shell.sh" %CURR_FOLDER_PATH%run_soceds_bash.sh'
