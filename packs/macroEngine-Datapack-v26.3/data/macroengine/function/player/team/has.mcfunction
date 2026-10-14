execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
data modify storage macroengine:output result set value 0b
$execute if entity @a[name=$(player),team=$(team)] run data modify storage macroengine:output result set value 1b
