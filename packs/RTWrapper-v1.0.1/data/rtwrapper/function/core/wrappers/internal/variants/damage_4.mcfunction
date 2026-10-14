# RTWrapper generated 4-parameter macro variant for /damage.
# Parameters: target, amount, damage_type, location_or_by
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$damage $(target) $(amount) $(damage_type) $(location_or_by)
