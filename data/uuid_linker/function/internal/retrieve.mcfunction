# Get the stored "UUID"
execute store result storage uuid_linker Temp.a int 1 run scoreboard players get @s uuid_linker.A
execute store result storage uuid_linker Temp.b int 1 run scoreboard players get @s uuid_linker.B
execute store result storage uuid_linker Temp.c int 1 run scoreboard players get @s uuid_linker.C
execute store result storage uuid_linker Temp.d int 1 run scoreboard players get @s uuid_linker.D
execute store result storage uuid_linker Temp.e int 1 run scoreboard players get @s uuid_linker.E
execute store result storage uuid_linker Temp.f int 1 run scoreboard players get @s uuid_linker.F
execute store result storage uuid_linker Temp.g int 1 run scoreboard players get @s uuid_linker.G
execute store result storage uuid_linker Temp.h int 1 run scoreboard players get @s uuid_linker.H

function uuid_linker:internal/hex with storage uuid_linker Temp
function uuid_linker:internal/concat with storage uuid_linker Temp