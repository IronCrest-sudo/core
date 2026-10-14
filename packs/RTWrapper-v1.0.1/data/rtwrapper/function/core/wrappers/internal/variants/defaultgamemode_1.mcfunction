# RTWrapper generated 1-parameter macro variant for /defaultgamemode.
# Parameters: gamemode
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$defaultgamemode $(gamemode)
