* SAC macro to intitialize environment each time SAC is started.
*echo on
setmacro /Users/cbeghein/Research/SAC_MACROS 
window 1 x 0.20 1.00 y 0.4 1.00
fileid format colon type list kzdate kcmpnm kstnm 
#baz gcarc
color blue skeleton black
qdp off
xdiv power off
xlabel 'Seconds'
ylabel l r 'EAST           NORTH           VERTICAL'
xlabel off;ylabel off
