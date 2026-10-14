execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{geo:0b} run return 0
$execute as @a[name=$(player),limit=1] unless entity @s[x=$(x),y=$(y),z=$(z),dx=$(dx),dy=$(dy),dz=$(dz)] run $(invoke)
