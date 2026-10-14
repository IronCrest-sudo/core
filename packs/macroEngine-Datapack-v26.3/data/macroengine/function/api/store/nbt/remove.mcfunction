# macroengine:api/store/nbt/remove [MACRO]
# Removes storage/path. Input (macro args): storage, path
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{store:0b} run return 0
$data remove storage $(storage) $(path)
