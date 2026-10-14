# macroengine:core/internal/cmd/data_remove_storage_apply
# The actual storage-removal logic.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data remove storage $(storage) $(path)