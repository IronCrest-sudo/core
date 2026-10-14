# RTWrapper generated 2-parameter macro variant for /damage.
# Parameters: target, amount
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$damage $(target) $(amount)
