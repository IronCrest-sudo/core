# Direct named-parameter API for /effect.
# Parameter order: action, targets, effect, duration, amplifier, hide_particles
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/effect
data remove storage rtwrapper:runtime current.params
