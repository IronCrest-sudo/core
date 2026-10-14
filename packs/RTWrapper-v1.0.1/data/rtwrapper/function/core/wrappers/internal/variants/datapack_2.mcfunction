# RTWrapper generated 2-parameter macro variant for /datapack.
# Parameters: action, name
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$datapack $(action) $(name)
