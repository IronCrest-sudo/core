# macroengine:world/get_time — 26.3 World Clocks
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute store result storage macroengine:output daytime int 1 run time query minecraft:day
execute store result storage macroengine:output total int 1 run time query gametime
execute store result storage macroengine:output day int 1 run time query minecraft:day repetition
