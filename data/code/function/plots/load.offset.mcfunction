# create plot
$execute positioned $(x) 0 $(y) run function code:plots/load.create with storage storage player
$execute positioned $(x).0 0.0 $(y).0 if data storage storage tiles[0] run function code:plots/load.tile with storage storage player.plot