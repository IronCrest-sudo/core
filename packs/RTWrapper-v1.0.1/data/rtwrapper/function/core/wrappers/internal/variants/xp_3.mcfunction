# RTWrapper generated 3-parameter macro variant for /xp.
# Parameters: action, targets, amount
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$xp $(action) $(targets) $(amount)
