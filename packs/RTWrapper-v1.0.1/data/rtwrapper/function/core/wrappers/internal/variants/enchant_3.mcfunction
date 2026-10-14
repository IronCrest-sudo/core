# RTWrapper generated 3-parameter macro variant for /enchant.
# Parameters: targets, enchantment, level
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$enchant $(targets) $(enchantment) $(level)
