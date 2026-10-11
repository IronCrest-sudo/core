# macroengine:api/store/nbt/set [MACRO]
# Writes macroengine:store nbt.value to storage/path. Input (macro args): storage, path
# Passing the value through storage means any SNBT is safe: no escaping needed.
#
# Usage:
#   data modify storage macroengine:store nbt.value set value {hp:20,name:"Steve"}
#   function macroengine:api/store/nbt/set {storage:"mypack:data",path:"players.steve"}
$data modify storage $(storage) $(path) set from storage macroengine:store nbt.value
