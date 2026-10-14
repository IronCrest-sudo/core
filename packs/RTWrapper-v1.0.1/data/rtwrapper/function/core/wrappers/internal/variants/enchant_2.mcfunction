# RTWrapper generated 2-parameter macro variant for /enchant.
# Parameters: targets, enchantment
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$enchant $(targets) $(enchantment)
