# RTWrapper generated 1-parameter macro variant for /stopsound.
# Parameters: targets
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$stopsound $(targets)
