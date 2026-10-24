# guikit :: runtime/register     #guikit:register, after the built-in containers
# In-game editing is gone: menus in storage guikit:lib are now authored by hand
# (/data modify storage guikit:lib ...) instead of through the old operator editor.
# The registry is rebuilt every reload.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute unless data storage guikit:lib order run data modify storage guikit:lib order set value []
execute unless data storage guikit:lib menus run data modify storage guikit:lib menus set value {}
execute unless data storage guikit:lib seeded run function guikit:runtime/seed
function guikit:runtime/sync
data remove storage guikit:ed pending
