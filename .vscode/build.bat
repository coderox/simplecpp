@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" x64
cd %3/build/
set compilerflags=/nologo /Od /Zi /EHsc
set linkerflags=/OUT:%3/output/%2.exe
cl.exe %compilerflags% %1 /link %linkerflags%
