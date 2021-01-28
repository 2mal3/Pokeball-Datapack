# Description: Randomly determines whether an entity is caught based on strength
# Called from function: 2mal3:poba/catch/catch
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Try to catch entity ","color":"green"},{"selector":"@s","color":"green"},{"text":" ...","color":"green"}]

# Randomly determines whether an entity is caught based on strength
execute if entity @s[type=#2mal3:poba/passive] if predicate 2mal3:poba/random/passive run function 2mal3:poba/catch/store_data
execute if entity @s[type=#2mal3:poba/neutral] if predicate 2mal3:poba/random/neutral run function 2mal3:poba/catch/store_data
execute if entity @s[type=#2mal3:poba/hostile] if predicate 2mal3:poba/random/hostile run function 2mal3:poba/catch/store_data