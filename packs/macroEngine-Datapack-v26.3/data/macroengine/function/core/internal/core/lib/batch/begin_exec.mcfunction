# macroengine:core/lib/batch/internal/begin_exec [MACRO]
# INPUT: $(id), $(spread_over)

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine batches.$(id) set value {items:[],spread_over:$(spread_over),flushed:0b}
