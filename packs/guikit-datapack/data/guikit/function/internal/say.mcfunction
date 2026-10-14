# macro: $(msg) $(color)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$tellraw @s [{"text":"[GUI] ","color":"gray"},{"text":"$(msg)","color":"$(color)","italic":false}]
