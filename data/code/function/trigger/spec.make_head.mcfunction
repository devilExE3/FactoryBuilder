summon item_display ~ ~ ~ {item:{id:"player_head",count:1},Tags:["playerhead","playerhead.this"],CustomNameVisible:true}
loot replace entity @n[type=item_display,tag=playerhead.this,distance=..0.1] container.0 loot code:player_head
data modify entity @n[type=item_display,tag=playerhead.this,distance=..0.1] CustomName set from entity @n[type=item_display,tag=playerhead.this,distance=..0.1] item.components."minecraft:profile".name
data merge entity @n[type=item_display,tag=playerhead.this,distance=..0.1] {transformation:{left_rotation:[0f,1f,0f,0f]},teleport_duration:1}
scoreboard players operation @n[type=item_display,tag=playerhead.this,distance=..0.1] id = @s id
team join spec_head @n[type=item_display,tag=playerhead.this,distance=..0.1]
tag @n[type=item_display,tag=playerhead.this,distance=..0.1] remove playerhead.this