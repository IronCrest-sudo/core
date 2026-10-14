# macroengine:core/internal/systems/audit/show_one  [INTERNAL — macro function]
# $(i) is an int written by show_loop from a scoreboard value, never player input.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$tellraw @s [{"text":"#$(i) ","color":"dark_gray"},{"storage":"macroengine:audit","nbt":"entries[$(i)]","interpret":false,"color":"yellow","plain":true}]
