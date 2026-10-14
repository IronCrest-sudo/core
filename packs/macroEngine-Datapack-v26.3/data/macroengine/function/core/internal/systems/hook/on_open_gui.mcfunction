# macroengine:systems/hook/internal/on_open_gui
# Bridge: #macroengine:core/internal/player/open_gui → #macroengine:events/on_open_gui
# Executor: @s = player who opened a GUI block
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function #macroengine:events/on_open_gui
