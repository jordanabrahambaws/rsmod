@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  game startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and GAME_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\game-0.0.4.jar;%APP_HOME%\lib\plugins-0.0.4.jar;%APP_HOME%\lib\net-0.0.4.jar;%APP_HOME%\lib\util-0.0.4.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.3.11.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.11.2.jar;%APP_HOME%\lib\kotlin-logging-1.5.9.jar;%APP_HOME%\lib\cache-runelite-parent-1.5.2.1.jar;%APP_HOME%\lib\http-api-runelite-parent-1.5.2.1.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\kotlin-scripting-common-1.3.11.jar;%APP_HOME%\lib\kotlin-script-runtime-1.3.11.jar;%APP_HOME%\lib\kotlinx-coroutines-core-1.1.0.jar;%APP_HOME%\lib\reflections-0.9.11.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\classgraph-4.6.12.jar;%APP_HOME%\lib\fastutil-7.0.7.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\netty-all-4.0.34.Final.jar;%APP_HOME%\lib\jbcrypt-0.4.jar;%APP_HOME%\lib\bcprov-jdk15on-1.54.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.3.11.jar;%APP_HOME%\lib\kotlin-reflect-1.3.11.jar;%APP_HOME%\lib\kotlin-stdlib-1.3.11.jar;%APP_HOME%\lib\log4j-core-2.11.2.jar;%APP_HOME%\lib\log4j-api-2.11.2.jar;%APP_HOME%\lib\kotlin-logging-common-1.5.9.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.5.0.jar;%APP_HOME%\lib\kotlinx-coroutines-core-common-1.1.0.jar;%APP_HOME%\lib\guava-23.2-jre.jar;%APP_HOME%\lib\javassist-3.21.0-GA.jar;%APP_HOME%\lib\commons-compress-1.10.jar;%APP_HOME%\lib\netty-buffer-4.1.0.Final.jar;%APP_HOME%\lib\antlr4-runtime-4.6.jar;%APP_HOME%\lib\commons-cli-1.3.1.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.3.11.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\jackson-databind-2.5.0.jar;%APP_HOME%\lib\jackson-core-2.5.0.jar;%APP_HOME%\lib\snakeyaml-1.12.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\error_prone_annotations-2.0.18.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\okhttp-3.7.0.jar;%APP_HOME%\lib\commons-csv-1.4.jar;%APP_HOME%\lib\netty-common-4.1.0.Final.jar;%APP_HOME%\lib\jackson-annotations-2.5.0.jar;%APP_HOME%\lib\okio-1.12.0.jar

@rem Execute game
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GAME_OPTS%  -classpath "%CLASSPATH%" gg.rsmod.game.Launcher %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GAME_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GAME_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
