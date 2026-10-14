# guikit :: cond/negate    flips #cond guikit.tmp (0 <-> 1)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute store success score #cond guikit.tmp if score #cond guikit.tmp matches 0
