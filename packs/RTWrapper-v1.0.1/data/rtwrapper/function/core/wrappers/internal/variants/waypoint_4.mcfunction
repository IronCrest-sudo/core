# RTWrapper generated 4-parameter macro variant for /waypoint.
# Parameters: action, id, property, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$waypoint $(action) $(id) $(property) $(value)
