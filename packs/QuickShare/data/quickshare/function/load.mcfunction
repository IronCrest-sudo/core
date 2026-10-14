# QuickShare - runs once on datapack (re)load
function quickshare:gate/version
scoreboard objectives add qs_cooldown dummy
tellraw @a {"text":"[QuickShare] loaded.","color":"gray"}
