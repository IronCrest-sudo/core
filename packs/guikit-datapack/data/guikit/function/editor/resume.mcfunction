# guikit :: editor/resume     as player, at player
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
tag @s remove guikit.resume
function guikit:runtime/ensure_pid
function guikit:editor/load_state
execute if data storage guikit:ed cur{screen:"edit"} run return run function guikit:editor/open_edit
execute if data storage guikit:ed cur{screen:"pick"} run return run function guikit:editor/open_pick
function guikit:editor/open_home
