execute if score #direction math matches 0 run setblock ~ ~ ~ stonecutter[facing=east]
execute if score #direction math matches 2 run setblock ~ ~ ~ stonecutter[facing=east]
execute if score #direction math matches 1 run setblock ~ ~ ~ stonecutter[facing=north]
execute if score #direction math matches 3 run setblock ~ ~ ~ stonecutter[facing=north]

# execute if score #direction math matches 0 run summon text_display ~.5 ~.5 ~.5 {text:'{"text":">","bold":true,"color":"gray"}',alignment:center,transformation:{left_rotation:[0f,0.707f,0f,0.707f],right_rotation:[0.707f,0f,0f,-0.707f],scale:[3f,3f,3f],translation:[.41f,.07f,.03f]},background:0,Tags:["block"],view_range:0.05}
# execute if score #direction math matches 1 run summon text_display ~.5 ~.5 ~.5 {text:'{"text":">","bold":true,"color":"gray"}',alignment:center,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0.707f,0f,0f,-0.707f],scale:[3f,3f,3f],translation:[.03f,.07f,-.41f]},background:0,Tags:["block"],view_range:0.05}
# execute if score #direction math matches 2 run summon text_display ~.5 ~.5 ~.5 {text:'{"text":">","bold":true,"color":"gray"}',alignment:center,transformation:{left_rotation:[0f,0.707f,0f,-0.707f],right_rotation:[0.707f,0f,0f,-0.707f],scale:[3f,3f,3f],translation:[-.41f,.07f,-.03f]},background:0,Tags:["block"],view_range:0.05}
# execute if score #direction math matches 3 run summon text_display ~.5 ~.5 ~.5 {text:'{"text":">","bold":true,"color":"gray"}',alignment:center,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,-0.707f],scale:[3f,3f,3f],translation:[-.03f,.07f,.41f]},background:0,Tags:["block"],view_range:0.05}

function code:blocks/util/place.conveyor
tag @n[type=marker,tag=block.this,distance=..1] add block.cutter