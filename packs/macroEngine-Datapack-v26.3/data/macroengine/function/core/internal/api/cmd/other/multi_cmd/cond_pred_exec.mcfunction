# macroengine:core/internal/api/cmd/other/multi_cmd/cond_pred_exec [MACRO]
# INPUT: $(predicate)

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless predicate $(predicate) run scoreboard players set $mcmd_cond_result macroengine.tmp 0
