# guikit :: widget/say     as player   storage guikit:in {msg:"text", color:"green"}
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:internal/say with storage guikit:in
