# RTWrapper generated 6-parameter macro variant for /particle.
# Parameters: particle, pos, delta, speed, count, mode
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$particle $(particle) $(pos) $(delta) $(speed) $(count) $(mode)
