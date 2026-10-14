# RTWrapper generated 2-parameter macro variant for /msg.
# Parameters: target, message
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$msg $(target) $(message)
