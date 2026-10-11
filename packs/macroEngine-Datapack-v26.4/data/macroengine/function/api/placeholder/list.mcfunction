# macroengine:api/placeholder/list
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Prints every registered placeholder (name and component) to the executor.
function macroengine:core/internal/api/store/_deprecated_placeholder
tellraw @s [{"text":"[MACROENGINE] ","color":"#00AAAA","bold":true},{"text":"placeholders: ","color":"gray"},{"storage":"macroengine:placeholder","nbt":"reg","plain":true,"interpret":false,"color":"white"}]
