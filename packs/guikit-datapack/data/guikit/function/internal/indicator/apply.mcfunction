# macro: $(i)     as player   loads states[$(i)] into guikit:ind cur, then tests it
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
data remove storage guikit:ind cur
$data modify storage guikit:ind cur set from storage guikit:ind items[$(i)]
execute unless data storage guikit:ind cur.matches run return 0
function guikit:internal/indicator/test with storage guikit:ind cur
