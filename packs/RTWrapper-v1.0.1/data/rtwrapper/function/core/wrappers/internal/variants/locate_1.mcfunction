# RTWrapper generated 1-parameter macro variant for /locate.
# Parameters: category
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$locate $(category)
