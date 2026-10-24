# click score: 0 idle, 1 detected (handler runs), 2 handled
# Default cfg: ["shift"]. Enable left/drop in storage guikit:cfg click_detection.

execute if score @s guikit.click matches 1.. run return 0
function guikit:internal/click/shift
execute if score @s guikit.click matches 1.. run return 0
function guikit:internal/click/left
