# macro: $(uid) $(mode) $(menu) $(alias)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:sess bound.u$(uid) set value {mode:"$(mode)",menu:"$(menu)",alias:"$(alias)"}
