# RTWrapper generated 3-parameter macro variant for /stopsound.
# Parameters: targets, source, sound
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$stopsound $(targets) $(source) $(sound)
