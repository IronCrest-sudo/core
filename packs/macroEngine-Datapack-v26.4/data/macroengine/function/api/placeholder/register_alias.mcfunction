# macroengine:api/placeholder/register_alias [MACRO]
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Makes %alias% resolve exactly like the already registered %target%
# (e.g. migrating from a pack that used other token names).
# Input (macro args): alias, target. Does nothing if target is not registered.
#
# Usage:  function macroengine:api/placeholder/register_alias {alias:"nick",target:"player"}
function macroengine:core/internal/api/store/_deprecated_placeholder
$execute if data storage macroengine:placeholder reg.$(target) run data modify storage macroengine:placeholder reg.$(alias) set from storage macroengine:placeholder reg.$(target)
