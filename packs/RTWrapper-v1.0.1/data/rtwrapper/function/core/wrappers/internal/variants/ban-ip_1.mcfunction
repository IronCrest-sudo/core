# RTWrapper generated 1-parameter macro variant for /ban-ip.
# Parameters: target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$ban-ip $(target)
