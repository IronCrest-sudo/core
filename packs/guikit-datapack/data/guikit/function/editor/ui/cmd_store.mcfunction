# macro: $(cmd)     single-quoted so a command may contain double quotes; no apostrophes
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ed widget.cmd set value '$(cmd)'
