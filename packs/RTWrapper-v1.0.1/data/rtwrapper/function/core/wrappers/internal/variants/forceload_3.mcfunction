# RTWrapper generated 3-parameter macro variant for /forceload.
# Parameters: action, from_pos, to_pos
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$forceload $(action) $(from_pos) $(to_pos)
