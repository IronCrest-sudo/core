# RTWrapper generated 3-parameter macro variant for /give.
# Parameters: target, item, count
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$give $(target) $(item) $(count)
