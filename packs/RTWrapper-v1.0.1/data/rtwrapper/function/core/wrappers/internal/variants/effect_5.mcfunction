# RTWrapper generated 5-parameter macro variant for /effect.
# Parameters: action, targets, effect, duration, amplifier
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$effect $(action) $(targets) $(effect) $(duration) $(amplifier)
