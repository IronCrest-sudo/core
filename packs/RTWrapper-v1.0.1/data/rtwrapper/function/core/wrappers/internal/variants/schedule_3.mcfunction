# RTWrapper generated 3-parameter macro variant for /schedule.
# Parameters: action, function_id, time
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$schedule $(action) $(function_id) $(time)
