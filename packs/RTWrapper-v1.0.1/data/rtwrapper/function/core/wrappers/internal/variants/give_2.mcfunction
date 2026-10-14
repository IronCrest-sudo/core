# RTWrapper generated 2-parameter macro variant for /give.
# Parameters: target, item
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$give $(target) $(item)
