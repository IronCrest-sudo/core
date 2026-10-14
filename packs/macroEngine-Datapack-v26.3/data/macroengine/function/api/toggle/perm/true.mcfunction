# macroengine:api/toggle/perm/true — Enable the perm trigger module

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute unless entity @s[tag=macroengine.admin] run return 0

data modify storage macroengine:engine config.module_perm set value 1b
function macroengine:core/config/apply


tellraw @s ["",{"text":"[MACROENGINE] ","color":"#00AAAA","bold":true},{"text":"perm","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"enabled","color":"green"}]