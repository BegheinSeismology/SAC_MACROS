* plotone.m calls script plotone.awk to create a macro that is then called
*    to plot one trace at a time -- assuming they end in e or n
*    Run from within sac in the directory with the *e and *n files
sc ls *.e *.n *.t *.r | awk -f /Users/cbeghein/Research/SAC_MACROS/plotone.awk > /tmp/plotnow.m  
m /tmp/plotnow.m
sc rm /tmp/plotnow.m
