# RTWrapper generated 4-parameter macro variant for /experience.
# Parameters: action, targets, amount, unit
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$experience $(action) $(targets) $(amount) $(unit)
