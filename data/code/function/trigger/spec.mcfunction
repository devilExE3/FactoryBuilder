tag @s add executor
execute as @s[gamemode=spectator] at @s as @e[type=item_display,tag=playerhead,distance=..15] if score @s id = @p[tag=executor] id run kill @s
tag @s remove executor
execute as @s[gamemode=spectator] run return run gamemode adventure @s
function code:trigger/spec.make_head
gamemode spectator @s