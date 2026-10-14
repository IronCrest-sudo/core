# RTWrapper generated 1-parameter macro variant for /setblock.
# Parameters: pos
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$setblock $(pos)
