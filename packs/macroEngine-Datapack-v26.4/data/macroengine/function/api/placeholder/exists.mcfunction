# macroengine:api/placeholder/exists [MACRO]
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# RETURN 1 when %name% is registered, else 0. Input (macro arg): name
function macroengine:core/internal/api/store/_deprecated_placeholder
$return run execute if data storage macroengine:placeholder reg.$(name)
