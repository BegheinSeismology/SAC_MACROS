*	Sac macro: sac-rotate-CB
* 
* Goes through all *e and *n files and cut them so that a pair has the
* same number of points (essential for rotation)
* Input are tmin and tmax

echo on
set t1 $1
set t2 $2

do file wild *.e
 setbb sta ( BEFORE ".e" $file )
 r %sta%.n %sta%.e
 sync
 cut $1 $2
 r
**** write over 
* last line commented to avoid modifying the original E and N files
*
* Rotation: 
*
**** r %sta%.n %sta%.e
 rmean
 rtr
 rotate to gcp
 write %sta%.r %sta%.t
 r %sta%.r
 chnhdr kcmpnm "radial"
 write over
 r %sta%.t
 chnhdr kcmpnm "trnsvers"
 write over
enddo

