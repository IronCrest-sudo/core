# RTWrapper generated 3-parameter macro variant for /trigger.
# Parameters: objective, action, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$trigger $(objective) $(action) $(value)
