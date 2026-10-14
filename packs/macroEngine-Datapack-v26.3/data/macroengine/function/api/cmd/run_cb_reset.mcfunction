execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{cmd:0b} run return 0
data modify block 0 -64 0 auto set value 0b
setblock 0 -64 0 minecraft:air replace

forceload remove 0 0
