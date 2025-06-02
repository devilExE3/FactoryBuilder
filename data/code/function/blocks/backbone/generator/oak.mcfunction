setblock ~ ~ ~ glass
summon block_display ~ ~ ~ {block_state:{Name:"grass_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.01f,0.01f,0.01f],scale:[0.98f,0.2f,0.98f]},Tags:["block"],view_range:0.05}
summon block_display ~ ~ ~ {block_state:{Name:"oak_sapling"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.15f,0.21f,0.15f],scale:[0.7f,0.7f,0.7f]},Tags:["block"],view_range:0.15}
function code:blocks/util/place.generator
tag @n[type=marker,tag=block.this,distance=..1] add block.generator.oak