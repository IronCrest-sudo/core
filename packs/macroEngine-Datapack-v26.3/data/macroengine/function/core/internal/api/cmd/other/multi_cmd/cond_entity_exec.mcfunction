# macroengine:core/internal/api/cmd/other/multi_cmd/cond_entity_exec [MACRO]
# INPUT: $(entity)

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless entity $(entity) run scoreboard players set $mcmd_cond_result macroengine.tmp 0
