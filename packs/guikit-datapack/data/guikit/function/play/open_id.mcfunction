# macro: $(menu)     menu id is m<number>
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:runtime/ensure_pid
$function guikit:play/open_do {id:"$(menu)"}
