execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine _dispatch.func set value "$(_rn_func)"
function #macroengine:internal/dispatch
