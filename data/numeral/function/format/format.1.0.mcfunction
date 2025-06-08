execute store result score #frac numeral run data get storage numeral:io A[0]
scoreboard players operation #frac numeral /= #0b numeral
scoreboard players operation #frac numeral %= #10 numeral
data modify storage numeral:temp number.mul set value "B"
function numeral:format/gen