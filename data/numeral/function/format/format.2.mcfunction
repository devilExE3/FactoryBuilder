# input: #A @ numeral, A[4]
execute if score #A numeral >= #1m numeral run return run function numeral:format/format.2.2
execute if score #A numeral >= #1k numeral run return run function numeral:format/format.2.1
function numeral:format/format.2.0