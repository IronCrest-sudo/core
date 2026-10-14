# macroengine:core/internal/api/item/combo_marker_apply
# Internal — do not call directly. Second pass of api/item/combo_marker.
# Expects: {player:"...",slot:"...",macroengine:{...}}

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$item modify entity @a[name=$(player),limit=1] $(slot) {function:"minecraft:set_components",components:{"minecraft:custom_data":{macroengine:$(macroengine)}}}