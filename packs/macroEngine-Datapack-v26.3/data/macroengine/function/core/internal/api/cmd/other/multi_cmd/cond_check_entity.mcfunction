# macroengine:core/internal/api/cmd/other/multi_cmd/cond_check_entity
# Entity leaf: condition.entity = "<selector>". Passes if it matches at
# least one entity.

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/internal/api/cmd/other/multi_cmd/cond_entity_exec with storage macroengine:engine _mcmd_cond_eval
