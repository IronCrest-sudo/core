# RTWrapper generated 1-parameter macro variant for /playsound.
# Parameters: sound
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$playsound $(sound)
