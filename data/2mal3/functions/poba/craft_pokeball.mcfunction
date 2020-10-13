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

# gamelog
execute if score $poba.debug poba.data matches 1 run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]:","color":"gray"},{"text":" Player crafted pokeball.","color":"green"}]
execute if score $poba.debug poba.data matches 1 unless entity @s[predicate=2mal3:poba/player_have_pokeball] run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"red"},{"text":"/","color":"gray"},{"text":"ERROR","color":"red"},{"text":"]:","color":"gray"},{"text":" Could't give Pokeball. Inventory full?","color":"red"}]
