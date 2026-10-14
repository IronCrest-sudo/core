# Tag, then cooldown, then confirm. A failed check sets #blocked and skips the action.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:play/act/gate_tag
execute if score #blocked guikit.tmp matches 1.. run return 0
function guikit:play/act/gate_cd
execute if score #blocked guikit.tmp matches 1.. run return 0
function guikit:play/act/gate_confirm
