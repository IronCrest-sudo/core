# RTWrapper generated 3-parameter macro variant for /data.
# Parameters: action, target_kind, target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$data $(action) $(target_kind) $(target)
