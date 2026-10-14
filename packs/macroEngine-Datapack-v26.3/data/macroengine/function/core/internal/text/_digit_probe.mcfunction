# macroengine:core/internal/text/_digit_probe [MACRO]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:text_map digit."$(c)" run data modify storage macroengine:text isd set value 1b
