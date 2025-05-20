execute as @s[tag=block.generator.oak] unless entity @n[type=item_display,tag=item,distance=..0.01] run summon item_display ~ ~ ~ {item:{id:"oak_log",count:1},teleport_duration:20,Tags:["item","item.this"]}
execute as @s[tag=block.generator.stone] unless entity @n[type=item_display,tag=item,distance=..0.01] run summon item_display ~ ~ ~ {item:{id:"cobblestone",count:1},teleport_duration:20,Tags:["item","item.this"]}

scoreboard players set @n[type=item_display,tag=item.this,distance=..0.01] count 1
execute as @n[type=item_display,tag=item.this,distance=..0.01] run data merge entity @s {CustomNameVisible:true,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f]}}
execute as @n[type=item_display,tag=item.this,distance=..0.01] run function code:logic/item.update_count
scoreboard players operation @n[type=item_display,tag=item.this,distance=..0.01] id = @s id
tag @n[type=item_display,tag=item.this,distance=..0.01] remove item.this