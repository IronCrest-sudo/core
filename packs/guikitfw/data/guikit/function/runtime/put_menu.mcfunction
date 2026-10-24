# macro: $(id)  — copies guikit:in menu → guikit:lib menus.$(id)
$data modify storage guikit:lib menus.$(id) set from storage guikit:in menu
# ensure order contains id (best-effort append)
$data modify storage guikit:lib order append value "$(id)"
