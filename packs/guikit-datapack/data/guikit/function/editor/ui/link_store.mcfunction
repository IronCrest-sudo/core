# macro: $(url)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ed widget.url set value "$(url)"
