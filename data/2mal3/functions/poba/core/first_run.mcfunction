# Description: One-time commands at the first start of the datapack
# Called from function: 2mal3:poba/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack installed!","color":"green"}]


# Remembers that the Datapack was installed
scoreboard players set $poba.first_run poba.data 1

# Sends installation message
tellraw @a [{"text":"Pokeball Datapack v1.0.0 by 2mal3 was installed!","color":"blue"}]
