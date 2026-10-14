# RTWrapper generated 1-parameter macro variant for /weather.
# Parameters: weather
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$weather $(weather)
