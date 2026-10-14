# RTWrapper generated 6-parameter macro variant for /clone.
# Parameters: begin, end, destination, mask_mode, clone_mode, filter
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$clone $(begin) $(end) $(destination) $(mask_mode) $(clone_mode) $(filter)
