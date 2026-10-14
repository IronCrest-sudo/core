# RTWrapper generated 5-parameter macro variant for /fillbiome.
# Parameters: from_pos, to_pos, biome, replace, filter
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$fillbiome $(from_pos) $(to_pos) $(biome) $(replace) $(filter)
