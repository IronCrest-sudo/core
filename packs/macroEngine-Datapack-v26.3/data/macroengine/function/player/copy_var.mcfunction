execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine players.$(to).$(key) set from storage macroengine:engine players.$(from).$(key)
