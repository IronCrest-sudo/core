# macroengine:api/placeholder/unregister [MACRO]
# DEPRECATED (26.3): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Removes %name%. Input (macro arg): name
function macroengine:core/internal/api/store/_deprecated_placeholder
$data remove storage macroengine:placeholder reg.$(name)
