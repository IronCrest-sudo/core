# macroengine:core/internal/api/store/_player_name [INTERNAL]
# Executor name as a plain string, resolved through the existing to_plain helper.
data modify storage macroengine:placeholder in.component set value {selector:"@s"}
function macroengine:core/internal/api/placeholder/to_plain
data remove storage macroengine:placeholder in.component
execute if data storage macroengine:placeholder out.string run data modify storage macroengine:store tmp.val set from storage macroengine:placeholder out.string
