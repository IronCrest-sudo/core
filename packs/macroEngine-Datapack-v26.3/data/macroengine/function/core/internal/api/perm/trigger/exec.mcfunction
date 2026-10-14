execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine _ptd_current.func run function macroengine:core/internal/api/trigger/call with storage macroengine:engine _ptd_current
execute if data storage macroengine:engine _ptd_current.cmd run function macroengine:core/internal/api/trigger/call2 with storage macroengine:engine _ptd_current
