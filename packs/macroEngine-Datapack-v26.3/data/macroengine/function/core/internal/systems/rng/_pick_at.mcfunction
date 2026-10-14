# macroengine:core/internal/systems/rng/_pick_at [MACRO]
# INPUT: $(index) — position already chosen by systems/rng/pick

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:output result set from storage macroengine:engine _rng_list[$(index)]
