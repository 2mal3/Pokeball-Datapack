# Description: The pokeball is landed
# Called from function: 2mal3:poba/core/tick/tick
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Pokeball is landed.","color":"green"}]

# Catches or releases an entity in the pokeball
execute unless data entity @s[tag=poba.pokeball] Item.tag.2mal3.entity run function 2mal3:poba/catch/catch
execute if data entity @s[tag=poba.pokeball] Item.tag.2mal3.entity run function 2mal3:poba/release

# Other
data modify entity @s PickupDelay set value 0