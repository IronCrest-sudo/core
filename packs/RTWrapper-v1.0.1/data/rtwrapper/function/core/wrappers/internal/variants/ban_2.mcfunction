# RTWrapper generated 2-parameter macro variant for /ban.
# Parameters: target, reason
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$ban $(target) $(reason)
