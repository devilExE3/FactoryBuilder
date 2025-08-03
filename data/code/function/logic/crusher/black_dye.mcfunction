scoreboard players remove @n[type=item_display,tag=crusher.side,distance=..1.01] count 1
scoreboard players remove @n[type=item_display,tag=crusher.top,distance=..1.01] count 1
scoreboard players set #count math 5
summon item_display ~ ~ ~ {item:{id:"black_dye",count:1},teleport_duration:20,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,-.23f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},view_range:0.25,Tags:["item","crusher.output","itemid.black_dye"],CustomName:'"1"',CustomNameVisible:true}