# Get the index for lookup table
data modify storage uuid_linker UUID.IntArray set from entity @s UUID

execute store result score .INT32 uuid_linker.A run data get storage uuid_linker UUID.IntArray[0]

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
scoreboard players operation .INT32 uuid_linker.A /= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.b int 1 run scoreboard players get .remainder uuid_linker.A

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.a int 1 run scoreboard players get .remainder uuid_linker.A

execute store result score .INT32 uuid_linker.A run data get storage uuid_linker UUID.IntArray[1]

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
scoreboard players operation .INT32 uuid_linker.A /= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.d int 1 run scoreboard players get .remainder uuid_linker.A

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.c int 1 run scoreboard players get .remainder uuid_linker.A

execute store result score .INT32 uuid_linker.A run data get storage uuid_linker UUID.IntArray[2]

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
scoreboard players operation .INT32 uuid_linker.A /= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.f int 1 run scoreboard players get .remainder uuid_linker.A

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.e int 1 run scoreboard players get .remainder uuid_linker.A

execute store result score .INT32 uuid_linker.A run data get storage uuid_linker UUID.IntArray[3]

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
scoreboard players operation .INT32 uuid_linker.A /= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.h int 1 run scoreboard players get .remainder uuid_linker.A

scoreboard players operation .remainder uuid_linker.A = .INT32 uuid_linker.A
scoreboard players operation .remainder uuid_linker.A %= .65536 uuid_linker.A
execute store result storage uuid_linker Temp.g int 1 run scoreboard players get .remainder uuid_linker.A