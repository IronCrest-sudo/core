# Ward test (CI only). See cmd_gate_default_off.mcfunction.
# @max_ticks 40

# Enabling dynamic commands must go through the validated config path and
# must be visible in the applied score mirror afterwards.
function macroengine:gate/approve
await score #dynamic_cmd macroengine.tick_flags matches 0
data modify storage macroengine:engine config_in set value {key:"dynamic_cmd",value:1b}
function macroengine:core/config/set
await score #dynamic_cmd macroengine.tick_flags matches 1
