# A[4] <= B[4] -> 1 (true), fail (false <=> A[4] > B[4])
# real check is done as A[4] > B[4]
execute store result score #A numeral run data get storage numeral:io A[3]
execute store result score #B numeral run data get storage numeral:io B[3]
execute if score #A numeral > #B numeral run return fail
execute if score #A numeral < #B numeral run return 1
execute store result score #A numeral run data get storage numeral:io A[2]
execute store result score #B numeral run data get storage numeral:io B[2]
execute if score #A numeral > #B numeral run return fail
execute if score #A numeral < #B numeral run return 1
execute store result score #A numeral run data get storage numeral:io A[1]
execute store result score #B numeral run data get storage numeral:io B[1]
execute if score #A numeral > #B numeral run return fail
execute if score #A numeral < #B numeral run return 1
execute store result score #A numeral run data get storage numeral:io A[0]
execute store result score #B numeral run data get storage numeral:io B[0]
execute if score #A numeral > #B numeral run return fail
return 1