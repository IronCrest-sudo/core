# guikit :: play/from_trigger   as player   /trigger guikit.open
# No more in-game browsable menu list: this opens storage guikit:cfg default_menu directly.
# Point it elsewhere with: /data modify storage guikit:cfg default_menu set value "ns:id"
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
scoreboard players set @s guikit.open 0
scoreboard players enable @s guikit.open
function guikit:runtime/ensure_pid
execute unless data storage guikit:cfg default_menu run return run tellraw @s [{"text":"[guikit] ","color":"gold"},{"text":"No default menu is configured. Set one with ","color":"red"},{"text":"/data modify storage guikit:cfg default_menu set value \"ns:id\"","color":"aqua"}]
function guikit:internal/clear/in
data modify storage guikit:in menu set from storage guikit:cfg default_menu
function guikit:api/open
execute unless score #ok guikit.const matches 1 run tellraw @s [{"text":"[guikit] ","color":"gold"},{"text":"Could not open the configured default menu.","color":"red"}]
