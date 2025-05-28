tag @s add executor
execute as @e[type=item_display,tag=playerhead,distance=..15] if score @s id = @p[tag=executor] id rotated ~ ~ run tp @s ~ ~2.5 ~ ~ ~