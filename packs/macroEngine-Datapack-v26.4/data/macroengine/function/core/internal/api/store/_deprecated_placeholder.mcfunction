# macroengine:core/internal/api/store/_deprecated_placeholder [INTERNAL]
# One-time notice to admins that api/placeholder/* is deprecated. The flag lives in
# macroengine:store dep.placeholder; remove it to see the notice again:
#   data remove storage macroengine:store dep
execute if data storage macroengine:store dep.placeholder run return 0
data modify storage macroengine:store dep.placeholder set value 1b
tellraw @a[tag=macroengine.admin] [{"text":"[MACROENGINE] ","color":"#00AAAA","bold":true},{"text":"api/placeholder/* is deprecated: it returns text components. Use api/store/* (plain strings, storage based). See docs/store.md.","color":"yellow"}]
