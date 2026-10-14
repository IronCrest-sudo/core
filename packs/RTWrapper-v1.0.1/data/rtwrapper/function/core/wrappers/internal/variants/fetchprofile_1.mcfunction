# RTWrapper generated 1-parameter macro variant for /fetchprofile.
# Parameters: name
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$fetchprofile $(name)
