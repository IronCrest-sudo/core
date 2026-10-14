# macro: $(url)     as player     (the game only opens http/https links)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$tellraw @s [{"text":"[GUI] ","color":"gray"},{"text":"$(url)","color":"aqua","underlined":true,"click_event":{"action":"open_url","url":"$(url)"}}]
