# macroengine:systems/geo/region_watch/internal/fire_enter_cmd [MACRO]
# INPUT: $(on_enter_cmd) — from _rw_cur; called ONLY when on_enter_cmd field exists.
# @s = player entering the region

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$$(on_enter_cmd)
