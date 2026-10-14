# RTWrapper generated 2-parameter macro variant for /publish.
# Parameters: allow_commands, gamemode
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$publish $(allow_commands) $(gamemode)
