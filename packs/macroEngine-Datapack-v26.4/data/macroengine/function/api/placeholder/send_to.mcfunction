# macroengine:api/placeholder/send_to [MACRO]
# DEPRECATED (26.4): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Like send, but for a named player; placeholders resolve for that player.
# Input (macro arg): player.  Text from macroengine:placeholder in.
#
# Usage:
#   data modify storage macroengine:placeholder in set value "Hi %player%, HP: %health%"
#   function macroengine:api/placeholder/send_to {player:"Steve"}
function macroengine:core/internal/api/store/_deprecated_placeholder
$execute as @a[name=$(player),limit=1] run function macroengine:api/placeholder/send
