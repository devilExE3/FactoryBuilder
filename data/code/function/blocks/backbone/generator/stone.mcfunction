setblock ~ ~ ~ glass
summon block_display ~ ~ ~ {block_state:{Name:"bedrock"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.01f,0.01f,0.01f],scale:[0.98f,0.2f,0.98f]},Tags:["block"]}
summon block_display ~ ~ ~ {block_state:{Name:"stone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.25f,0.21f,0.25f],scale:[0.5f,0.5f,0.5f]},Tags:["block"]}
summon item_display ~.5 ~.5 ~.5 {item:{id:"wooden_pickaxe",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.3f,.3f,0f],scale:[.5f,.5f,.5f]},Tags:["block"]}
function code:blocks/util/place.generator
tag @n[type=marker,tag=block.this,distance=..1] add block.generator.stone