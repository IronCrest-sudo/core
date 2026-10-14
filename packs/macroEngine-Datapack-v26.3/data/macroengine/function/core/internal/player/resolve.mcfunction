# macroEngine player module — resolve (load step 2 of 3).
# The module ships in exactly one flavour per pack, so there is nothing to
# gate on: resolving the player module means initializing it directly.

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/internal/player/init
