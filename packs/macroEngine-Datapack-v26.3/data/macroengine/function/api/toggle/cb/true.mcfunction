execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
data modify storage macroengine:engine config.module_cb set value 1b
function macroengine:core/config/apply

tellraw @s [{"text":"[MACROENGINE] ","color":"#00AAAA","bold":true},{"text":"cb module: ","color":"aqua"},{"text":"enabled","color":"green"}]
