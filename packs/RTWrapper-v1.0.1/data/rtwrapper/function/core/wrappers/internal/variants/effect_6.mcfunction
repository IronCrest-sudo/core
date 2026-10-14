# RTWrapper generated 6-parameter macro variant for /effect.
# Parameters: action, targets, effect, duration, amplifier, hide_particles
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$effect $(action) $(targets) $(effect) $(duration) $(amplifier) $(hide_particles)
