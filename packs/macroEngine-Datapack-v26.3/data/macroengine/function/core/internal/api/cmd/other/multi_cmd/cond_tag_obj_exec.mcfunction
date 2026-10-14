# macroengine:core/internal/api/cmd/other/multi_cmd/cond_tag_obj_exec [MACRO]
# INPUT: $(name), $(has)

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:engine _mcmd_cond_tmp{has:1b} unless entity @s[tag=$(name)] run scoreboard players set $mcmd_cond_result macroengine.tmp 0
$execute if data storage macroengine:engine _mcmd_cond_tmp{has:0b} if entity @s[tag=$(name)] run scoreboard players set $mcmd_cond_result macroengine.tmp 0
