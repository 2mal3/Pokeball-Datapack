# Description: A entity in a pokeball was freed
# Called from: 2mal3:poba/core/tick/second
# Datapack by 2mal3

# give pokeball back
loot give @p loot 2mal3:poba/pokeball

# sound effect
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 5

# reset pokeball name
execute if entity @s[tag=poba.no_name] run data merge entity @s {CustomName:""}

# reset
tag @s remove poba.caught
tag @s remove poba.no_name


# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Freed ","color":"green"},{"selector":"@s","color":"gray"},{"text":"!","color":"green"}]
