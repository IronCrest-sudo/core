# guikit :: api/open
# Input storage guikit:in: {menu:"<id>", page:0, timer:<ticks>}
# Result: #ok guikit.const = 1|0
# Menu id is bare (e.g. "shop"), must exist in storage guikit:lib menus.<id>

scoreboard players set #ok guikit.const 0
execute unless data storage guikit:in menu run return 0

# Validate registry / lib
function guikit:internal/open/check
execute unless score #ok guikit.const matches 1 run return 0

# Close previous if any
execute if score @s guikit.timer matches 1.. run function guikit:api/close

# Defaults
execute unless data storage guikit:in page run data modify storage guikit:in page set value 0
execute unless data storage guikit:in timer run data modify storage guikit:in timer set from storage guikit:cfg timer

# Assign ids
execute unless score @s guikit.pid matches 1.. run function guikit:runtime/assign_pid
scoreboard players operation @s guikit.uid = #next_uid guikit.uid
scoreboard players add #next_uid guikit.uid 1

# Kill stale cart for this pid
function guikit:internal/container/kill_mine

# Summon + bind
function guikit:internal/container/summon
execute unless entity @e[type=#guikit:container,tag=guikit.new,limit=1] run return run function guikit:internal/open/fail
scoreboard players operation @e[type=#guikit:container,tag=guikit.new,limit=1] guikit.pid = @s guikit.pid
scoreboard players operation @e[type=#guikit:container,tag=guikit.new,limit=1] guikit.uid = @s guikit.uid
tag @e[type=#guikit:container,tag=guikit.new] remove guikit.new

# State
execute store result score @s guikit.page run data get storage guikit:in page
execute store result score @s guikit.timer run data get storage guikit:in timer
scoreboard players operation @s guikit.tmax = @s guikit.timer
scoreboard players set @s guikit.drop 0
data modify storage guikit:ctx menu set from storage guikit:in menu
function guikit:runtime/last_record

function #guikit:on_open
function guikit:runtime/menu_hooks_open
scoreboard players set @s guikit.dirty 1
function guikit:internal/draw/redraw

data remove storage guikit:in page
data remove storage guikit:in timer
scoreboard players set #ok guikit.const 1
