# RTWrapper generated 7-parameter macro variant for /playsound.
# Parameters: sound, source, targets, pos, volume, pitch, min_volume
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$playsound $(sound) $(source) $(targets) $(pos) $(volume) $(pitch) $(min_volume)
