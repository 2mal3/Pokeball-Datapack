# Description: -
# Called from function: 2mal3:poba/catch/catch
# Datapack by 2mal3

playsound minecraft:entity.evoker_fangs.attack master @a[distance=..5] ~ ~ ~

# Show the name of the entity in the pokeball
data modify entity @s Item.tag.display.Lore[2] set from block ~ 255 ~ Text1
setblock ~ 255 ~ minecraft:air

# Transfer the entity data to the pokeball
data modify entity @s Item.tag.2mal3.entity set from storage 2mal3:pokeball