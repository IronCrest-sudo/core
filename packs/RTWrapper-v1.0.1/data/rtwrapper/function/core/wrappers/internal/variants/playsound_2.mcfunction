# RTWrapper generated 2-parameter macro variant for /playsound.
# Parameters: sound, source
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$playsound $(sound) $(source)
