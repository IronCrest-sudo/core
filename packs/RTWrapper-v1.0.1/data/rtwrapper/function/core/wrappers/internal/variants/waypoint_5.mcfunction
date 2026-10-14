# RTWrapper generated 5-parameter macro variant for /waypoint.
# Parameters: action, id, property, value, targets
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$waypoint $(action) $(id) $(property) $(value) $(targets)
