# macro: $(snd)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ed widget.snd set value "$(snd)"
