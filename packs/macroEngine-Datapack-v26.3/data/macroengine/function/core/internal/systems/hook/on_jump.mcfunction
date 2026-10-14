# macroengine:systems/hook/internal/on_jump
# Bridge: #macroengine:core/internal/player/jumped → #macroengine:events/on_jump
# Executor: @s = jumping player
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function #macroengine:events/on_jump
