# RTWrapper generated 3-parameter macro variant for /setblock.
# Parameters: pos, block, mode
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$setblock $(pos) $(block) $(mode)
