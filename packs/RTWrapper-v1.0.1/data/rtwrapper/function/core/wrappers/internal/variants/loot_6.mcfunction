# RTWrapper generated 6-parameter macro variant for /loot.
# Parameters: action, target, target_slot, source_kind, source, tool
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$loot $(action) $(target) $(target_slot) $(source_kind) $(source) $(tool)
