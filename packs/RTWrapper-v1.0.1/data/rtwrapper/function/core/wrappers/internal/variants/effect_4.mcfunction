# RTWrapper generated 4-parameter macro variant for /effect.
# Parameters: action, targets, effect, duration
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$effect $(action) $(targets) $(effect) $(duration)
