# plotone.awk -- awk script to create a plot macro for sac for single traces
#    modified from DTM script.  Does not use ttsac.
BEGIN {
	print "bd x"
	print "qdp 3000;xdiv power off"
}
{
print "r " $1"*"
print "rmean"
print "p1"
print "pause" 
}

END {}
