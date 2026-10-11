# macroengine:api/store/selftest
# Quick in-game check of the store module. Run it as a player: /function macroengine:api/store/selftest
# RETURN 1 when every check passes, 0 otherwise. Leaves g.__selftest and tpl.__selftest behind.
data modify storage macroengine:store in set value {name:"__selftest.n",value:5}
function macroengine:api/store/set
data modify storage macroengine:store in set value {name:"__selftest.n",by:3}
function macroengine:api/store/add
execute unless data storage macroengine:store out{value:8} run say store selftest FAILED: add
execute unless data storage macroengine:store out{value:8} run return fail
data modify storage macroengine:store in set value {name:"bad name\"",value:1}
execute if function macroengine:api/store/set run say store selftest FAILED: unsafe name accepted
execute if function macroengine:api/store/set run return fail
data modify storage macroengine:store in set value {name:"__selftest",lang:"en_us",value:"Hi %who%, n=%g:__selftest.n%, 100%%"}
function macroengine:api/store/text/define
data modify storage macroengine:store in set value {name:"__selftest",args:{who:"A \"quoted\" {name}"}}
function macroengine:api/store/render
execute unless data storage macroengine:store out{string:"Hi A \"quoted\" {name}, n=8, 100%"} run say store selftest FAILED: render
execute unless data storage macroengine:store out{string:"Hi A \"quoted\" {name}, n=8, 100%"} run return fail
say store selftest passed
return 1
