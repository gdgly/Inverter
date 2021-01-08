@ECHO off
set c51inc=\c51\inc;
set c51lib=\c51\lib
\c51\bin\c51 %1.c small db
\c51\bin\l51 %1.obj to %1.abs
e:\3h\oh %1.abs to %1.bin
\3h\cvf51 %1.abs
