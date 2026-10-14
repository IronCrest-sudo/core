# macroengine:core/lib/fiber/internal/kill_exec [MACRO]
# INPUT: $(id)

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless data storage macroengine:engine fibers.$(id) run return 0

$data remove storage macroengine:engine fibers.$(id).alive
$data remove storage macroengine:engine fibers.$(id).resume