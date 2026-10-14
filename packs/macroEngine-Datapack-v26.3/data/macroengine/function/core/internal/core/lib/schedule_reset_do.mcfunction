execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine schedules.$(key).func set value "$(func)"
$data modify storage macroengine:engine schedules.$(key).interval set value $(interval)
$data modify storage macroengine:engine queue append value {func:"$(func)", delay:$(interval)}
