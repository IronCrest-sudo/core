# macroengine:api/placeholder/register_text [MACRO]
# DEPRECATED (26.3): use macroengine:api/store/render (plain strings, storage based); see docs/store.md.
# Registers %name% as a fixed piece of text.
#
# Input (macro args):
#   name  — placeholder name, without the percent signs (letters, digits, _ - .)
#   value — text to substitute (must not contain a double quote or backslash;
#           use register_string for text that does)
#
# Usage:
#   function macroengine:api/placeholder/register_text {name:"server",value:"My Server"}
function macroengine:core/internal/api/store/_deprecated_placeholder
$data modify storage macroengine:placeholder reg.$(name) set value {text:"$(value)"}
