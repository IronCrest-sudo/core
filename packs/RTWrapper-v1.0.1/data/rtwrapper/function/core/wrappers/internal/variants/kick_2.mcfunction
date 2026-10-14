# RTWrapper generated 2-parameter macro variant for /kick.
# Parameters: target, reason
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$kick $(target) $(reason)
