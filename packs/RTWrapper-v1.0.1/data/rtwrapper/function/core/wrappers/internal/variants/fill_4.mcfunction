# RTWrapper generated 4-parameter macro variant for /fill.
# Parameters: from_pos, to_pos, block, mode
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$fill $(from_pos) $(to_pos) $(block) $(mode)
