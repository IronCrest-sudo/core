# RTWrapper generated 3-parameter macro variant for /ride.
# Parameters: target, action, vehicle
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$ride $(target) $(action) $(vehicle)
