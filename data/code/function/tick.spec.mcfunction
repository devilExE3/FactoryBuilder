tag @s add executor
execute as @e[type=item_display,tag=playerhead] if score @s id = @p[tag=executor] id rotated ~ ~ run tp @s ~ ~2.5 ~ ~ ~
tag @s remove executor