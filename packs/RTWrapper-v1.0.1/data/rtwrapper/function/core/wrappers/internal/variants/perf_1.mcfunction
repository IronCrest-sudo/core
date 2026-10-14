# RTWrapper generated 1-parameter macro variant for /perf.
# Parameters: action
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$perf $(action)
