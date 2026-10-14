# RTWrapper generated 4-parameter macro variant for /particle.
# Parameters: particle, pos, delta, speed
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$particle $(particle) $(pos) $(delta) $(speed)
