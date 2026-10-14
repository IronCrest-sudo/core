# macroengine:systems/color/internal/lerp_exec [MACRO]
# Internal — called by api/color/lerp.
# Reads macroengine:engine color.gradients.$(gradient)[$(step)] into output.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:output result set from storage macroengine:engine color.gradients.$(gradient)[$(step)]
