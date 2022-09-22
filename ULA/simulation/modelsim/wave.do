view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0011 -range 3 0 -starttime 0ns -endtime 1000ns sim:/main/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0001 -range 3 0 -starttime 0ns -endtime 1000ns sim:/main/b 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
