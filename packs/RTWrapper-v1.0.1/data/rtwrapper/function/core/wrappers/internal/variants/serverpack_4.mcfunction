# RTWrapper generated 4-parameter macro variant for /serverpack.
# Parameters: action, id, url, hash
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$serverpack $(action) $(id) $(url) $(hash)
