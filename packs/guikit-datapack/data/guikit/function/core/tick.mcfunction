# guikit :: tick
execute unless score #guikit.gate.2 vortaforge.gate matches 0 unless score #guikit.permit vortaforge.gate matches 1 run function guikit:gate/permit_tick
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute unless score #guikit.gate.3 vortaforge.gate matches 0 as @a[tag=!guikit.consented] run function guikit:gate/consent_tick
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
scoreboard players add #tick guikit.const 1
execute as @a[scores={guikit.gmsg=1..}] run scoreboard players remove @s guikit.gmsg 1
scoreboard players enable @a guikit.ack
execute as @a[scores={guikit.ack=1..}] run scoreboard players set @s guikit.ack 0

# Stolen widget stacks (same click id, different owner) must be gone before probe.
execute as @a run function guikit:internal/guard/purge
# @e is dimension-local. Also search at each player so a nether/end menu is covered.
execute as @e[type=minecraft:interaction,tag=guikit.guard] if data entity @s interaction at @s run function guikit:internal/guard/on_click
execute as @e[type=minecraft:interaction,tag=guikit.guard] if data entity @s attack at @s run function guikit:internal/guard/on_click
execute as @a at @s as @e[type=minecraft:interaction,tag=guikit.guard,distance=..8] if data entity @s interaction run function guikit:internal/guard/on_click
execute as @a at @s as @e[type=minecraft:interaction,tag=guikit.guard,distance=..8] if data entity @s attack run function guikit:internal/guard/on_click
execute as @e[type=minecraft:interaction,tag=guikit.guard] run function guikit:internal/guard/orphan
execute as @a at @s as @e[type=minecraft:interaction,tag=guikit.guard,distance=..64] run function guikit:internal/guard/orphan

execute as @a[scores={guikit.timer=1..}] at @s run function guikit:core/tick_player
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{guikit:{w:1b}}}}}]

# player-facing triggers, permission 0. guikit.open now opens the configured default
# menu directly (storage guikit:cfg default_menu) — the browsable list is gone.
scoreboard players enable @a guikit.open
scoreboard players enable @a guikit.last
scoreboard players enable @a guikit.close
execute as @a[scores={guikit.open=1..}] at @s run function guikit:play/from_trigger
execute as @a[scores={guikit.last=1..}] at @s run function guikit:play/last_trigger
execute as @a[scores={guikit.close=1..}] run function guikit:play/close_trigger
execute as @a[tag=!guikit.welcomed] at @s run function guikit:runtime/welcome
