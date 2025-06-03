# get block rotation that would be when player places a block at ~ ~ ~
# result: #direction @ math
# 0 - south ; 1 - east ; 2 - north ; 3 - west
# source player is @p[tag=dexpack.right_click]

# #player_rot is [-180,180]
execute store result score #player_rot math run data get entity @p[tag=rc] Rotation[0]
# bring it to [0,360] and flip it (since we want the block's perpective) + add 45 (180 + 45 = 225)
scoreboard players set #direction math 225
scoreboard players operation #direction math -= #player_rot math
# if it's above 360, we want to keep direction 0
execute if score #direction math matches 360.. run scoreboard players set #direction math 0
# this will now give [0-3] with respect to direction
scoreboard players operation #direction math /= #90 math
execute as @p[tag=rc] if predicate code:sneaking run scoreboard players add #direction math 2
execute as @p[tag=rc] if predicate code:sneaking run scoreboard players operation #direction math %= #4 math