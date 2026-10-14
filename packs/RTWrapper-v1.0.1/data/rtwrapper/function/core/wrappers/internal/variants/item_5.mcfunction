# RTWrapper generated 5-parameter macro variant for /item.
# Parameters: action, target_kind, target, slot, modifier
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$item $(action) $(target_kind) $(target) $(slot) $(modifier)
