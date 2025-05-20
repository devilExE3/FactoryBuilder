execute if score #direction math matches 0 run setblock ~ ~ ~ blast_furnace[facing=north,lit=true]
execute if score #direction math matches 1 run setblock ~ ~ ~ blast_furnace[facing=west,lit=true]
execute if score #direction math matches 2 run setblock ~ ~ ~ blast_furnace[facing=south,lit=true]
execute if score #direction math matches 3 run setblock ~ ~ ~ blast_furnace[facing=east,lit=true]

execute if score #direction math matches 0 run summon block_display ~.5 ~.5 ~.5 {block_state:{Name:"black_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[-.25f,-.25f,.001f]},Tags:["block"]}
execute if score #direction math matches 1 run summon block_display ~.5 ~.5 ~.5 {block_state:{Name:"black_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[.001f,-.25f,-.25f]},Tags:["block"]}
execute if score #direction math matches 2 run summon block_display ~.5 ~.5 ~.5 {block_state:{Name:"black_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[-.25f,-.25f,-.501f]},Tags:["block"]}
execute if score #direction math matches 3 run summon block_display ~.5 ~.5 ~.5 {block_state:{Name:"black_concrete"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[-.501f,-.25f,-.25f]},Tags:["block"]}

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.furnace