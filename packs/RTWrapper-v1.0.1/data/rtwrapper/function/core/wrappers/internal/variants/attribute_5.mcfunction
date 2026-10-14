# RTWrapper generated 5-parameter macro variant for /attribute.
# Parameters: target, attribute, action, value, modifier_id
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$attribute $(target) $(attribute) $(action) $(value) $(modifier_id)
