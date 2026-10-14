# guikit :: internal/btn/deny     as player     reads storage guikit:btn cur.deny
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:internal/clear/in
data modify storage guikit:in msg set value "Not available."
execute if data storage guikit:btn cur.deny run data modify storage guikit:in msg set from storage guikit:btn cur.deny
data modify storage guikit:in color set value "red"
function guikit:widget/say
