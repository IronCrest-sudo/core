# RTWrapper generated 3-parameter macro variant for /attribute.
# Parameters: target, attribute, action
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$attribute $(target) $(attribute) $(action)
