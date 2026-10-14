# RTWrapper generated 3-parameter macro variant for /fillbiome.
# Parameters: from_pos, to_pos, biome
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$fillbiome $(from_pos) $(to_pos) $(biome)
