# Description: Starts the Pokeball projectile
# Called from function: 2mal3:poba/core/tick/tick
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Player ","color":"green"},{"selector":"@p","color":"green"},{"text":" has thrown a pokeball.","color":"green"}]



# Summon new snowball
summon snowball ~ ~ ~ {Tags:["poba.pokeball_projectile","poba.init"],Passengers:[{id:"minecraft:item",Tags:["poba.pokeball","poba.init"],Item:{id:"minecraft:snowball",Count:1b},PickupDelay:32767}],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:3330103}}}

# Transfer data from the old snowball to the new snowball
data modify entity @e[type=minecraft:snowball,tag=poba.pokeball_projectile,tag=poba.init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=minecraft:snowball,tag=poba.pokeball_projectile,tag=poba.init,limit=1] Motion set from entity @s Motion

# Transfer data from the old snowball to the item
data modify entity @e[type=minecraft:item,tag=poba.pokeball,tag=poba.init,limit=1] Item.tag set from entity @s Item.tag
data modify entity @e[type=minecraft:item,tag=poba.pokeball,tag=poba.init,limit=1] Item.tag.CustomModelData set value 3330101


# Remove tag
tag @e[tag=poba.init] remove poba.init


# Kill the old snowball
kill @s
