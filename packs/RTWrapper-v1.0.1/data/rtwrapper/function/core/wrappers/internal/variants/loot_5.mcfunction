# RTWrapper generated 5-parameter macro variant for /loot.
# Parameters: action, target, target_slot, source_kind, source
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$loot $(action) $(target) $(target_slot) $(source_kind) $(source)
