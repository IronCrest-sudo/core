# RTWrapper generated 2-parameter macro variant for /locate.
# Parameters: category, id
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$locate $(category) $(id)
