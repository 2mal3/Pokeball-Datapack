# Description: Destroys the Pokeball if catching the entity was not successful
# Called from function: 2mal3:poba/catch/catch
# Datapack by 2mal3

playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..5] ~ ~ ~
kill @s