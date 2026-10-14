# RTWrapper generated 2-parameter macro variant for /setworldspawn.
# Parameters: pos, angle
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$setworldspawn $(pos) $(angle)
