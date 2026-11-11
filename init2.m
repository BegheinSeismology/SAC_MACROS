* SAC macro to intitialize environment each time SAC2000 is started.
*echo on
setmacro /Users/cbeghein/Research/SAC_MACROS 
window 1 x 0.20 1.00 y 0.30 0.92
fileid format colon type list kzdate kcmpnm kstnm
color blue skeleton black
*qdp off
*fg
*lh columns 2
sc echo "To get header values in two columns, use lh columns 2"
qdp 10000
xdiv power off
xlabel 'SECONDS'
ylabel l r 'EAST           NORTH           VERTICAL'
ylabel off
*SETMACRO /Users/cbeghein/Research/SAC_MACROS
*echo off
