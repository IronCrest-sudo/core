# macroengine:api/title/clear [MACRO]
# Clears the title currently shown to a player. Input (macro arg): player
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{title:0b} run return 0
$title @a[name=$(player),limit=1] clear
