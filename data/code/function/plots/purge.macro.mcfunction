# we have $(x), $(y), $(z), and $(OwnerUUID)

# remove any old tile at that pos
$data remove storage storage "$(OwnerUUID)".tiles[{x:$(x),y:$(y),z:$(z)}]

# add temp this
$data modify storage storage "$(OwnerUUID)".tiles append from storage temp this