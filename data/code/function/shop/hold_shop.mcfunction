summon chest_minecart ~ ~ ~ {Invulnerable:true,Silent:true,NoGravity:true,CustomDisplayTile:true,DisplayState:{Name:"air"},Tags:["shop","shop.this"],CustomName:'{"text":"Shop"}',CustomNameVisible:false}
#summon interaction ~ ~ ~ {width:1.02,height:-0.2,Tags:["shop.interaction","shop.this","shop.interaction.1"]}
#summon interaction ~ ~ ~ {width:1.02,height:0.55,Tags:["shop.interaction","shop.this","shop.interaction.2"]}
#ride @n[type=interaction,tag=shop.this,tag=shop.interaction.1,distance=..0.01] mount @n[type=chest_minecart,tag=shop.this,distance=..0.01]
#ride @n[type=interaction,tag=shop.this,tag=shop.interaction.2,distance=..0.01] mount @n[type=chest_minecart,tag=shop.this,distance=..0.01]
scoreboard players operation @n[type=chest_minecart,tag=shop.this,distance=..0.01] id = @s id
#scoreboard players operation @e[type=interaction,tag=shop.this,distance=..0.01] id = @s id
tag @n[type=chest_minecart,tag=shop.this,distance=..0.01] remove shop.this
#tag @e[type=interaction,tag=shop.this,distance=..0.01] remove shop.this
tag @s add holding_shop
scoreboard players set @s shop_page 0