# RTWrapper generated 2-parameter macro variant for /summon.
# Parameters: entity, pos
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$summon $(entity) $(pos)
