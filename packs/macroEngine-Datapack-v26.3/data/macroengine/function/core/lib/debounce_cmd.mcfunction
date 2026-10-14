execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:engine schedules.$(key) run return 0

function macroengine:core/lib/schedule_cmd with storage macroengine:input {}
