*
*	Sac macro: sac_zdi
*
*	This version is for a single sac file, z component.
*	Run from directory with the sac file and its polezero.
*	Decimated/corrected file is put in ./time_di
*	sample: m ../sac_zdi sacfile polezerof decim lowcut
*	jas/vt 
*
* echo on
setbb sacfile  $1
setbb polezerof  $2
setbb decim  $3
setbb lowcut  $4
sc mkdir ./time_di
cp %sacfile ./time_di
cd ./time_di
 r %sacfile
 setbb station &1,KSTNM
 setbb polezero &1,KSTNM
 cp ../%polezerof %station%.pz
 chnhdr allt (0 - &1,o&)
 chnhdr IZTYPE IO
 setbb vert %station%.z
 w %vert
*
*	Decimate and instrument correct the time series
*
 sc ../../rdi %vert %decim %lowcut %polezero
mv di.lst ../%station%_di.lst
ls *.z > ../time_di.lst
sc rm *.SAC *.pz
