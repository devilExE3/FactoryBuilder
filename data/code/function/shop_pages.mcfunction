# Page 0

setblock 29999998 -64 0 barrel
data remove block 29999998 -64 0 Items

data modify block 29999998 -64 0 Items append value {id:"gray_carpet",count:1,components:{item_name:'"Conveyor"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$10","color":"green","italic":false}]'],custom_data:{shop:"conveyor",shop_item:1b}},Slot:0}
data modify block 29999998 -64 0 Items append value {id:"hopper",count:1,components:{item_name:'"Chute"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$25","color":"green","italic":false}]'],custom_data:{shop:"chute",shop_item:1b}},Slot:1}
data modify block 29999998 -64 0 Items append value {id:"lodestone",count:1,components:{item_name:'"Elevator"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$75","color":"green","italic":false}]'],custom_data:{shop:"elevator",shop_item:1b}},Slot:2}
data modify block 29999998 -64 0 Items append value {id:"lime_carpet",count:1,components:{item_name:'"Selling Platform"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$50","color":"green","italic":false}]'],custom_data:{shop:"sell",shop_item:1b}},Slot:3}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:4}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:5}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:6}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:7}
data modify block 29999998 -64 0 Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:8}

data modify block 29999998 -64 0 Items append value {id:"stonecutter",count:1,components:{item_name:'"Block Cutter"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$500","color":"green","italic":false}]'],custom_data:{shop:"cutter",shop_item:1b}},Slot:9}
data modify block 29999998 -64 0 Items append value {id:"blast_furnace",count:1,components:{item_name:'"Furnace"',lore:['[{"text":"Price: ","color":"gray","italic":false},{"text":"$1000","color":"green","italic":false}]'],custom_data:{shop:"furnace",shop_item:1b}},Slot:10}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:11}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:12}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:13}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:14}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:15}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:16}
data modify block 29999998 -64 0 Items append value {id:"black_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:17}

data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:18}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:19}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:20}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:21}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:22}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:23}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:24}
data modify block 29999998 -64 0 Items append value {id:"light_gray_stained_glass_pane",count:1,components:{hide_tooltip:{}},Slot:25}
data modify block 29999998 -64 0 Items append value {id:"arrow",count:1,components:{item_name:'"Next Page"',custom_data:{shop_item:1b,next_page:1b}},Slot:26}

function code:shop_pages.generate