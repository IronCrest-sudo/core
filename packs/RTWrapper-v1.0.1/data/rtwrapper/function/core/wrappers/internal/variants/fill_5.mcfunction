# RTWrapper generated 5-parameter macro variant for /fill.
# Parameters: from_pos, to_pos, block, mode, filter
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$fill $(from_pos) $(to_pos) $(block) $(mode) $(filter)
