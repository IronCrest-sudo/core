# RTWrapper generated 1-parameter macro variant for /trigger.
# Parameters: objective
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$trigger $(objective)
