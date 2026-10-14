# RTWrapper generated 9-parameter macro variant for /item.
# Parameters: action, target_kind, target, slot, modifier, source_kind, source, source_slot, item
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$item $(action) $(target_kind) $(target) $(slot) $(modifier) $(source_kind) $(source) $(source_slot) $(item)
