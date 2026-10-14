# macroengine:systems/hook/unbind_all
# Clears all hook binds.

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{hook:0b} run return 0
data modify storage macroengine:engine hook_binds set value []