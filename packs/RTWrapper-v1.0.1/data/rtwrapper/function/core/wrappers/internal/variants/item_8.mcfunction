# RTWrapper generated 8-parameter macro variant for /item.
# Parameters: action, target_kind, target, slot, modifier, source_kind, source, source_slot
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$item $(action) $(target_kind) $(target) $(slot) $(modifier) $(source_kind) $(source) $(source_slot)
