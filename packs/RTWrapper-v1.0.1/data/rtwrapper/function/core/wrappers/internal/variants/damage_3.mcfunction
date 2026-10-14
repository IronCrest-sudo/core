# RTWrapper generated 3-parameter macro variant for /damage.
# Parameters: target, amount, damage_type
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$damage $(target) $(amount) $(damage_type)
