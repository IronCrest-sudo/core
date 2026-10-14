# macroengine:api/gamerule/internal/read [MACRO]
# Reads gamerule value from engine storage into output.
# Called by get only.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:engine gamerules.$(_gamerule_norm) run data modify storage macroengine:output gamerule set from storage macroengine:engine gamerules.$(_gamerule_norm)
