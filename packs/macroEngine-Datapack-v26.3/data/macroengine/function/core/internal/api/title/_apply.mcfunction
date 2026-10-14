# macroengine:core/internal/api/title/_apply [MACRO, INTERNAL]
# $(fade_in) $(stay) $(fade_out) are numbers copied from storage by show_p.
# macroengine:title t and s are plain strings; interpret=false prints them as written.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$title @s times $(fade_in) $(stay) $(fade_out)
title @s subtitle {"storage":"macroengine:title","nbt":"s","interpret":false}
title @s title {"storage":"macroengine:title","nbt":"t","interpret":false}
