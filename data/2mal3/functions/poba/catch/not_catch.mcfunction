# Description: If the entity couldn't catched
# Called from: 2mal3:poba/catch/test
# Datapack by 2mal3

# Output debug message in chat, if enabled (WARN)
tellraw @a[scores={poba.debug_mode=2..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"gold"},{"text":"/","color":"gray"},{"text":"INFO","color":"gold"},{"text":"]: ","color":"gray"},{"text":"Couldn't catch ","color":"gold"},{"selector":"@s","color":"gray"},{"text":".","color":"gold"}]


# playsound
playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 5

# kill
kill @e[type=minecraft:item,predicate=2mal3:poba/pokeball,sort=nearest,distance=..1.5]
