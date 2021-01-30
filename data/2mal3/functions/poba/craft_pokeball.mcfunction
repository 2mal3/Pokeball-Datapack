# Description: A player crafted a pokeball
# Called from: advancement: 2mal3:poba/craft_pkeball
# Datapack by 2mal3

# give pokeball
clear @s minecraft:knowledge_book 1
loot give @s loot 2mal3:poba/pokeball
clear @s minecraft:knowledge_book 0

# reset
advancement revoke @s only 2mal3:poba/craft_pokeball
recipe take @s 2mal3:poba/pokeball


# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Player ","color":"green"},{"selector":"@s","color":"gray"},{"text":" crafted pokeball.","color":"green"}]

# Output debug message in chat, if enabled (ERROR)
execute unless entity @s[predicate=2mal3:poba/player_have_pokeball] run tellraw @a[scores={poba.debug_mode=1..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"red"},{"text":"/","color":"gray"},{"text":"INFO","color":"red"},{"text":"]: ","color":"gray"},{"text":"Could't give player ","color":"red"},{"selector":"@s","color":"gray"},{"text":" the pokeball. Inventory full?","color":"red"}]
