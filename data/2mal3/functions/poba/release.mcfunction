# Description: "Frees" an entity from the pokeball
# Called from function: 2mal3:poba/projectile/landed
# Datapack by 2mal3

tag @s remove poba.pokeball

# Summons the captured entity
execute if entity @s[nbt={Item:{tag:{2mal3:{entity:{id:"minecraft:pig"}}}}}] run summon minecraft:pig ~ ~ ~

# Transmits the data to the summoned entity
#data modify entity @e[limit=1]

# Deletes the data from the pokeball
data merge entity @s {Item:{tag:{display:{Lore:['{"text":""}','{"text":"Caught:","color":"green","italic":false}','{"text":"-","color":"green"}']}}}}
data remove entity @s Item.tag.2mal3.entity
