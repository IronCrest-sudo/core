execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
data remove storage macroengine:output result
$data modify storage macroengine:output result set from entity @a[name=$(player),limit=1] Dimension
