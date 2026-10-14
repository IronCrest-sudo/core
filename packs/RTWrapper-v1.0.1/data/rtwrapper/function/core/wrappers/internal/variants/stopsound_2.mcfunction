# RTWrapper generated 2-parameter macro variant for /stopsound.
# Parameters: targets, source
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$stopsound $(targets) $(source)
