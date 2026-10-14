# RTWrapper generated 3-parameter macro variant for /dialog.
# Parameters: action, targets, dialog
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$dialog $(action) $(targets) $(dialog)
