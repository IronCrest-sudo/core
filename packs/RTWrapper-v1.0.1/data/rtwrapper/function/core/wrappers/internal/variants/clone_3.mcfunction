# RTWrapper generated 3-parameter macro variant for /clone.
# Parameters: begin, end, destination
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$clone $(begin) $(end) $(destination)
