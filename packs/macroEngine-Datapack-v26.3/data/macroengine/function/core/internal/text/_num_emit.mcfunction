# macroengine:core/internal/text/_num_emit [MACRO]
# INPUT $(s): a string already validated by num_check (digits, one '-', one '.').
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:text out set value $(s)
