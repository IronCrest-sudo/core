# macroengine:api/placeholder/reset
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Drops every registered placeholder (including your own) and restores the built-ins.
function macroengine:core/internal/api/store/_deprecated_placeholder
data remove storage macroengine:placeholder reg
function macroengine:api/placeholder/load
