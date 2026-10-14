execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
tellraw @a[tag=macroengine.admin] {"text":"[Team] -- Registered Teams --","color":"aqua"}
tellraw @a[tag=macroengine.admin] {"nbt":"teams","plain":true ,"storage":"macroengine:engine","interpret":false,"color":"white"}
tellraw @a[tag=macroengine.admin] {"text":"[Team] ---------------------","color":"aqua"}
