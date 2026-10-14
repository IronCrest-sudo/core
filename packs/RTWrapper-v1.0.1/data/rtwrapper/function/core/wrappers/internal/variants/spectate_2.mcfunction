# RTWrapper generated 2-parameter macro variant for /spectate.
# Parameters: target, player
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$spectate $(target) $(player)
