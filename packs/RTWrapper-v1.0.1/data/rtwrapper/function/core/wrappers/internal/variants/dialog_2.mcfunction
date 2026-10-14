# RTWrapper generated 2-parameter macro variant for /dialog.
# Parameters: action, targets
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$dialog $(action) $(targets)
