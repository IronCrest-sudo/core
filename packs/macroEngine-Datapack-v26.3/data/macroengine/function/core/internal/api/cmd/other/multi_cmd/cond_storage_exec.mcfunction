# macroengine:core/internal/api/cmd/other/multi_cmd/cond_storage_exec [MACRO]
# INPUT: $(storage)

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless data storage $(storage) run scoreboard players set $mcmd_cond_result macroengine.tmp 0
