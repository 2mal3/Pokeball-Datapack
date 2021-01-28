# Description: "Catches" an entity in the pokeball
# Called from function: 2mal3:poba/projectile/landed
# Datapack by 2mal3

# Reset the data storage
scoreboard players set $poba.data poba.data 0

# Randomly determines whether the nearest entity is caught based on strength
execute as @e[distance=..2.5,sort=nearest,limit=1,tag=!poba.pokeball] if data entity @s Attributes run function 2mal3:poba/catch/test


# -
execute if score $poba.data poba.data matches 1 run function 2mal3:poba/catch/success

# Kills the Pokeball if the entity has not been caught
execute if score $poba.data poba.data matches 0 run function 2mal3:poba/catch/fail


# Remove the pokeball tag
tag @s remove poba.pokeball