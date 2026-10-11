# macroengine:api/placeholder/send_all
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Like send, but every online player receives the text with the placeholders
# resolved for that player (%player% and %score:...% differ per recipient).
function macroengine:core/internal/api/store/_deprecated_placeholder
function macroengine:api/placeholder/parse
execute as @a run tellraw @s {"storage":"macroengine:placeholder","nbt":"out","interpret":true}
