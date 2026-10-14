# macroengine:systems/geo/region_watch/internal/fire_leave_cmd [MACRO]
# INPUT: $(on_leave_cmd) — from _rw_cur; called ONLY when on_leave_cmd field exists.
# @s = player leaving the region

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$$(on_leave_cmd)
