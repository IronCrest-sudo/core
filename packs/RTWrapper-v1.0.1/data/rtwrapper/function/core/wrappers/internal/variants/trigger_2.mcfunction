# RTWrapper generated 2-parameter macro variant for /trigger.
# Parameters: objective, action
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$trigger $(objective) $(action)
