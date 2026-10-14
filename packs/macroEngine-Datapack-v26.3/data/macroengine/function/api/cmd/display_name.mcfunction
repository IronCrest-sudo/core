execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{cmd:0b} run return 0
$data modify entity @e[type=$(type),tag=$(tag),limit=1] CustomName set value '$(name)'