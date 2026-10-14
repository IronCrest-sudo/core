execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless data storage macroengine:engine _uro{func:"$(func)"} run function macroengine:core/internal/events/uro_append with storage macroengine:engine _uro
