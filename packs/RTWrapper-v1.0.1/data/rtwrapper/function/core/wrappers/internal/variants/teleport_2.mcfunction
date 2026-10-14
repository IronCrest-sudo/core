# RTWrapper generated 2-parameter macro variant for /teleport.
# Parameters: target, x
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$teleport $(target) $(x)
