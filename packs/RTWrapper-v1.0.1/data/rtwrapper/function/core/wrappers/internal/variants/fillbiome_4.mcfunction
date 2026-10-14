# RTWrapper generated 4-parameter macro variant for /fillbiome.
# Parameters: from_pos, to_pos, biome, replace
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$fillbiome $(from_pos) $(to_pos) $(biome) $(replace)
