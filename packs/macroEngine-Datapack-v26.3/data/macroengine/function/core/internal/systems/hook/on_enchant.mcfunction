# macroengine:systems/hook/internal/on_enchant
# Bridge: #macroengine:core/internal/player/enchanted → #macroengine:events/on_enchant
# Executor: @s = player who enchanted
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function #macroengine:events/on_enchant
