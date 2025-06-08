execute store result score #frac numeral run data get storage numeral:io A[1]
scoreboard players operation #frac numeral /= #0b numeral
scoreboard players operation #frac numeral %= #10 numeral
data modify storage numeral:temp number.mul set value "e18"
function numeral:format/gen