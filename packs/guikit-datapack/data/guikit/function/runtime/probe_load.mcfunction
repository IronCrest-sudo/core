# macro: $(uid)
# In-game editing (home/edit/pick) and the menu browser are gone — "play" is the only mode left.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
$data modify storage guikit:sess cur set from storage guikit:sess bound.u$(uid)
execute unless data storage guikit:sess cur.mode run return 0
execute if data storage guikit:sess cur{mode:"play"} run function guikit:play/probe
