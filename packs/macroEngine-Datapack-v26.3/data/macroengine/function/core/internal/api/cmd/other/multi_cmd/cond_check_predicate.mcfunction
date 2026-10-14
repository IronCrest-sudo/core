# macroengine:core/internal/api/cmd/other/multi_cmd/cond_check_predicate
# Predicate leaf: condition.predicate = "namespace:path". Evaluated as @s.

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/internal/api/cmd/other/multi_cmd/cond_pred_exec with storage macroengine:engine _mcmd_cond_eval
