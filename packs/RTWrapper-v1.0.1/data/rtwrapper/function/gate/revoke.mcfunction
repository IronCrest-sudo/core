# Gate 2 - operator revoke: the pack goes inactive again until re-approved.
scoreboard players set #rtwrapper.permit vortaforge.gate 0
tellraw @a {"text":"[rtwrapper] Approval revoked.","color":"yellow"}
function rtwrapper:gate/permit_prompt
