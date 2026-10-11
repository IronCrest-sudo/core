# macroengine:core/internal/api/store/_tok_score [INTERNAL]  token %score:objective%
data modify storage macroengine:store tmp.rest set string storage macroengine:store tmp.nm 6
data remove storage macroengine:validate in
data modify storage macroengine:validate in.value set from storage macroengine:store tmp.rest
execute unless function macroengine:systems/validate/safe_name run return 0
data modify storage macroengine:store tmp.k set value {}
data modify storage macroengine:store tmp.k.obj set from storage macroengine:store tmp.rest
function macroengine:core/internal/api/store/_tok_score_build with storage macroengine:store tmp.k
function macroengine:core/internal/api/placeholder/to_plain
data remove storage macroengine:placeholder in.component
execute if data storage macroengine:placeholder out.string run data modify storage macroengine:store tmp.val set from storage macroengine:placeholder out.string
