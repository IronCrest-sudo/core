# macroengine:api/store/render
# Fills a template and returns a PLAIN STRING (no text component, no tellraw).
#
# INPUT  macroengine:store in.template (string)   template text, OR
#        macroengine:store in.name     (string)   id stored with api/store/text/define
#        macroengine:store in.lang     (string)   optional; fallback order described in _find_tpl
#        macroengine:store in.args     (compound) optional; values are strings or numbers
# OUTPUT macroengine:store out.string  the result;  macroengine:output store.string mirrors it
# RETURN 1 on success, 0 when the template is missing/invalid or an argument is not
#        a string or number.
#
# Syntax inside a template
#   %name%         value of in.args.name
#   %g:name%       global value (api/store/set)
#   %p:name%       per-player value of the executor (api/store/player/set)
#   %score:obj%    scoreboard value of the executor
#   %player%       executor name        %nl%  line break        %%  a literal percent
#   Unknown or unclosed %...% stays as written. Nested %...% inside values is not parsed.
# Plain strings in, plain strings out. Nothing here ever builds a text component.
# Names are checked with systems/validate/safe_name while they are still data in storage,
# before they reach a macro line (see api/perm/require for the same pattern).
data remove storage macroengine:store out.string
data remove storage macroengine:store tmp
execute if data storage macroengine:store in.template run data modify storage macroengine:store tmp.tpl set from storage macroengine:store in.template
execute unless data storage macroengine:store tmp.tpl unless function macroengine:core/internal/api/store/_name run return 0
execute unless data storage macroengine:store tmp.tpl run function macroengine:core/internal/api/store/_find_tpl
execute unless data storage macroengine:store tmp.tpl run return 0

data modify storage macroengine:text s set from storage macroengine:store tmp.tpl
data modify storage macroengine:text sep set value "%"
data modify storage macroengine:text keep_empty set value 1b
data modify storage macroengine:text n set value 0
function macroengine:core/internal/text/split
data modify storage macroengine:store tmp.segs set from storage macroengine:text out
function macroengine:core/internal/text/reset

data modify storage macroengine:store tmp.frags set value []
scoreboard players set #st_mode macroengine.tmp 0
function macroengine:core/internal/api/store/_loop
data remove storage macroengine:store tmp.segs

data modify storage macroengine:text list set from storage macroengine:store tmp.frags
data modify storage macroengine:store out.string set value ""
execute unless data storage macroengine:store tmp.frags[0] run data remove storage macroengine:text list
execute unless data storage macroengine:store tmp.frags[0] run data modify storage macroengine:store out.ok set value 1b
execute if data storage macroengine:store tmp.frags[0] store success score #st_cc macroengine.tmp run function macroengine:core/internal/text/concat
execute if data storage macroengine:store tmp.frags[0] if score #st_cc macroengine.tmp matches 0 run data modify storage macroengine:store out.ok set value 0b
execute if data storage macroengine:store tmp.frags[0] if score #st_cc macroengine.tmp matches 1 run data modify storage macroengine:store out.ok set value 1b
execute if data storage macroengine:text out run data modify storage macroengine:store out.string set from storage macroengine:text out
function macroengine:core/internal/text/reset
data modify storage macroengine:output store.string set from storage macroengine:store out.string
data remove storage macroengine:store tmp
execute if data storage macroengine:store out{ok:1b} run return 1
return 0
