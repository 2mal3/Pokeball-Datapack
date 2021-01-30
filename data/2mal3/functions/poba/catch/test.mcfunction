# Description: Test if it is allowed to catches the entity
# Called from: 2mal3:poba/core/tick/second
# Datapack by 2mal3

# gamelog
execute if score $poba.debug poba.data matches 1 run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]:","color":"gray"},{"text":" Trying to catch ","color":"green"},{"selector":"@s","color":"green"},{"text":" ...","color":"green"}]

# Resets the entity catch storage
scoreboard players set $poba.caught poba.data 0

# catch
execute if entity @s[type=#2mal3:poba/hostile] if predicate 2mal3:poba/random/hostile run function 2mal3:poba/catch/catch
execute if entity @s[type=#2mal3:poba/neutral] if predicate 2mal3:poba/random/neutral run function 2mal3:poba/catch/catch
execute if entity @s[type=#2mal3:poba/passive] if predicate 2mal3:poba/random/passive run function 2mal3:poba/catch/catch

# creepers explodes
execute if entity @s[type=minecraft:creeper] run data merge entity @s {Fuse:0}

# If the entity couldn't catched
execute if score $poba.caught poba.data matches 0 run function 2mal3:poba/catch/not_catch
