execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless data storage macroengine:engine players.$(player).$(key) run data modify storage macroengine:engine players.$(player).$(key) set value $(value)
