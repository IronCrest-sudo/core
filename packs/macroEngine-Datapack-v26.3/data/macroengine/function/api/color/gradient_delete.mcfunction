# macroengine:api/color/gradient_delete [MACRO]
# Removes a named gradient from storage.
#
# Input (macro args):
#   name — gradient name to remove
#
# Usage:
#   function macroengine:api/color/gradient_delete {name:"health"}
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{color:0b} run return 0
$data remove storage macroengine:engine color.gradients.$(name)
