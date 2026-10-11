# macroengine:api/placeholder/register_score [MACRO]
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Registers %name% as a scoreboard value. holder may be a selector such as @s
# (resolved for whoever the text is shown to) or a fake player such as #total.
#
# Input (macro args): name, holder, objective
#
# Usage:
#   function macroengine:api/placeholder/register_score {name:"kills",holder:"@s",objective:"kills"}
function macroengine:core/internal/api/store/_deprecated_placeholder
$data modify storage macroengine:placeholder reg.$(name) set value {score:{name:"$(holder)",objective:"$(objective)"}}
