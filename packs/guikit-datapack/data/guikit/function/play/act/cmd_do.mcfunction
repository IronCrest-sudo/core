# macro: $(cmd)     stored by an operator; runs at function permission level
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
# Off by default: an operator enables stored commands with guikit:cfg dynamic_cmd.
execute unless data storage guikit:cfg {dynamic_cmd:1b} run return 0
$execute as @s at @s run $(cmd)
