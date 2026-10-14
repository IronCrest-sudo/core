# [MACRO] INPUT: $(pre_hook)
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$function $(pre_hook)
