# RTWrapper generated 3-parameter macro variant for /summon.
# Parameters: entity, pos, nbt
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$summon $(entity) $(pos) $(nbt)
