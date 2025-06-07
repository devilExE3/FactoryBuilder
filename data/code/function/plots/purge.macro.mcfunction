# we have $(x), $(y), $(z), and $(uuid)

# remove any old tile at that pos
$data remove storage storage root."$(uuid)".tiles[{x:$(x),y:$(y),z:$(z)}]

# add temp this
$data modify storage storage root."$(uuid)".tiles append from storage temp this