execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless data storage macroengine:engine events.$(event) run return 0

$data modify storage macroengine:engine queue append value {func:"macroengine:events/internal/fire_deferred", delay:$(delay), event:"$(event)"}
