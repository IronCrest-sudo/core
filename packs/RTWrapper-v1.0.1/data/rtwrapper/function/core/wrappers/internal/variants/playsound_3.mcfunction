# RTWrapper generated 3-parameter macro variant for /playsound.
# Parameters: sound, source, targets
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$playsound $(sound) $(source) $(targets)
