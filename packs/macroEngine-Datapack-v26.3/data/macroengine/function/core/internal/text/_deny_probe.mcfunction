# macroengine:core/internal/text/_deny_probe [MACRO]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:text_map $(t)."$(c)" run scoreboard players set #tx_hit macroengine.tmp 1
