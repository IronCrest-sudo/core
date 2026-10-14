# macro: $(own)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute if items entity @s player.cursor *[custom_data~{guikit:{w:1b}}] unless items entity @s player.cursor *[custom_data~{guikit:{own:$(own)}}] run function guikit:internal/guard/purge_hit {slot:"player.cursor"}
