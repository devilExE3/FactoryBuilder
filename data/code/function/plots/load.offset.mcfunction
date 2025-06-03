# create plot
$execute positioned $(x) 0 $(y) run function code:plots/load.create with storage player player
$execute positioned $(x).0 0.0 $(y).0 if data storage tiles tiles[0] run function code:plots/load.tile with storage player player.plot