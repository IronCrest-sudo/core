# RTWrapper generated 1-parameter macro variant for /warden_spawn_tracker.
# Parameters: target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$warden_spawn_tracker $(target)
