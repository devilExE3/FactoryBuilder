scoreboard objectives remove uuid_linker.A
scoreboard objectives remove uuid_linker.B
scoreboard objectives remove uuid_linker.C
scoreboard objectives remove uuid_linker.D
scoreboard objectives remove uuid_linker.E
scoreboard objectives remove uuid_linker.F
scoreboard objectives remove uuid_linker.G
scoreboard objectives remove uuid_linker.H

data remove storage minecraft:uuid_linker UUID
data remove storage minecraft:uuid_linker Temp
data remove storage minecraft:uuid_linker Hex

tellraw @a ["","<",{"text":"UUID Linker","color":"aqua"},"> Datapack ",{"text":"uninstalled","color":"red"}]
