# macro $(slot) $(filler)
data modify storage guikit:work item set from storage guikit:work filler
$execute unless items entity @e[type=#guikit:container,tag=guikit.me,limit=1] container.$(slot) * run item replace entity @e[type=#guikit:container,tag=guikit.me,limit=1] container.$(slot) with $(filler)[custom_data={guikit:{widget:1,type:"separator",id:"fill_$(slot)",pack:"guikit"}},max_stack_size=1]
