rem echo off
for %%i in (*) do mklink /h "%HOME%"\%%i %~f1\%%i
