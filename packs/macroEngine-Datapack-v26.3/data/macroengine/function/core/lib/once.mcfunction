execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:engine once_keys.$(key) run return 0

$data modify storage macroengine:engine once_keys.$(key) set value 1b

$data modify storage macroengine:engine _dispatch.func set value "$(func)"
function #macroengine:internal/dispatch
