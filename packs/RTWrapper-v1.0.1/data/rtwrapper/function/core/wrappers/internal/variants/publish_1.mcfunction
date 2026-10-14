# RTWrapper generated 1-parameter macro variant for /publish.
# Parameters: allow_commands
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$publish $(allow_commands)
