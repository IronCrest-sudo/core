# RTWrapper generated 3-parameter macro variant for /item.
# Parameters: action, target_kind, target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$item $(action) $(target_kind) $(target)
