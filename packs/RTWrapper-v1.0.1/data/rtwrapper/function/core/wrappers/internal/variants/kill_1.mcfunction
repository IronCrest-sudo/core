# RTWrapper generated 1-parameter macro variant for /kill.
# Parameters: targets
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$kill $(targets)
