# RTWrapper generated 4-parameter macro variant for /xp.
# Parameters: action, targets, amount, unit
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$xp $(action) $(targets) $(amount) $(unit)
