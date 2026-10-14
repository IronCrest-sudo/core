# macroengine:core/internal/text/_case_map [MACRO]
# INPUT $(t) table name, $(c) one character (quote and backslash are excluded by safe).
# Leaves ch untouched when the table has no entry for c.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:text ch set from storage macroengine:text_map $(t)."$(c)"
