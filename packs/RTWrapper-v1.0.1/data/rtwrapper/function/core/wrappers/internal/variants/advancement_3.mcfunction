# RTWrapper generated 3-parameter macro variant for /advancement.
# Parameters: action, targets, range
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$advancement $(action) $(targets) $(range)
