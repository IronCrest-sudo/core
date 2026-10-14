# macroengine:core/lib/fiber/internal/is_alive_exec [MACRO]
# INPUT: $(id)

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
data modify storage macroengine:output result set value 0b
$execute if data storage macroengine:engine fibers.$(id){alive:1b} run data modify storage macroengine:output result set value 1b