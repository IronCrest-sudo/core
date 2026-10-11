# macroengine:api/placeholder/register_selector [MACRO]
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Registers %name% as an entity/player name via a selector.
#
# Input (macro args): name, selector (e.g. "@p", "@s", "Steve")
#
# Usage:
#   function macroengine:api/placeholder/register_selector {name:"nearest",selector:"@p"}
function macroengine:core/internal/api/store/_deprecated_placeholder
$data modify storage macroengine:placeholder reg.$(name) set value {selector:"$(selector)"}
