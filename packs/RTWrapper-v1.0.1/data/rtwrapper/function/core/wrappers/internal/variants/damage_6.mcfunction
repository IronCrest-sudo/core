# RTWrapper generated 6-parameter macro variant for /damage.
# Parameters: target, amount, damage_type, location_or_by, source, cause
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$damage $(target) $(amount) $(damage_type) $(location_or_by) $(source) $(cause)
