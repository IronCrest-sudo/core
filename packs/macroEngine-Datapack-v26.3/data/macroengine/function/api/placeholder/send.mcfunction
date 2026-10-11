# macroengine:api/placeholder/send
# DEPRECATED (26.3): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Parses macroengine:placeholder in and prints the result in chat to the executor (@s).
# Placeholders resolve for the executor, so use `execute as <player> run function ...`
# to address someone else.
#
# Usage:
#   data modify storage macroengine:placeholder in set value "Hello %player%, you have %score:coins% coins"
#   function macroengine:api/placeholder/send
function macroengine:core/internal/api/store/_deprecated_placeholder
function macroengine:api/placeholder/parse
tellraw @s {"storage":"macroengine:placeholder","nbt":"out","interpret":true}
