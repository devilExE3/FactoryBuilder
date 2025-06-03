summon item_display ~ ~ ~ {item:{id:"player_head",count:1},Tags:["playerhead","playerhead.this"],CustomNameVisible:true}
data modify entity @n[type=item_display,tag=playerhead.this,distance=..0.1] item.components."minecraft:profile".id set from entity @s UUID
execute if data entity @s bukkit run data modify entity @n[type=item_display,tag=playerhead.this,distance=..0.1] CustomName set from entity @s bukkit.lastKnownName
execute unless data entity @s bukkit run data modify entity @n[type=item_display,tag=playerhead.this,distance=..0.1] CustomName set value '"non-bukkit"'
data merge entity @n[type=item_display,tag=playerhead.this,distance=..0.1] {transformation:{left_rotation:[0f,1f,0f,0f]},teleport_duration:1}
scoreboard players operation @n[type=item_display,tag=playerhead.this,distance=..0.1] id = @s id
team join spec_head @n[type=item_display,tag=playerhead.this,distance=..0.1]
tag @n[type=item_display,tag=playerhead.this,distance=..0.1] remove playerhead.this