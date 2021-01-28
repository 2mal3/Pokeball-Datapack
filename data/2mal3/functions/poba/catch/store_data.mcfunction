# Description: Saves the data of the entity to be caught
# Called from function: 2mal3:poba/catch/test
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Entity ","color":"green"},{"selector":"@s","color":"green"},{"text":" was caught.","color":"green"}]

# Saves entity type
# passive
execute if entity @s[type=minecraft:bat] run data modify storage 2mal3:pokeball id set value "minecraft:bat"
execute if entity @s[type=minecraft:chicken] run data modify storage 2mal3:pokeball id set value "minecraft:chicken"
execute if entity @s[type=minecraft:cod] run data modify storage 2mal3:pokeball id set value "minecraft:cod"
execute if entity @s[type=minecraft:cow] run data modify storage 2mal3:pokeball id set value "minecraft:cow"
execute if entity @s[type=minecraft:donkey] run data modify storage 2mal3:pokeball id set value "minecraft:donkey"
execute if entity @s[type=minecraft:fox] run data modify storage 2mal3:pokeball id set value "minecraft:fox"
execute if entity @s[type=minecraft:horse] run data modify storage 2mal3:pokeball id set value "minecraft:horse"
execute if entity @s[type=minecraft:mooshroom] run data modify storage 2mal3:pokeball id set value "minecraft:mooshroom"
execute if entity @s[type=minecraft:mule] run data modify storage 2mal3:pokeball id set value "minecraft:mule"
execute if entity @s[type=minecraft:ocelot] run data modify storage 2mal3:pokeball id set value "minecraft:ocelot"
execute if entity @s[type=minecraft:panda] run data modify storage 2mal3:pokeball id set value "minecraft:panda"
execute if entity @s[type=minecraft:parrot] run data modify storage 2mal3:pokeball id set value "minecraft:parrot"
execute if entity @s[type=minecraft:pig] run data modify storage 2mal3:pokeball id set value "minecraft:pig"
execute if entity @s[type=minecraft:rabbit] run data modify storage 2mal3:pokeball id set value "minecraft:rabbit"
execute if entity @s[type=minecraft:sheep] run data modify storage 2mal3:pokeball id set value "minecraft:sheep"
execute if entity @s[type=minecraft:skeleton_horse] run data modify storage 2mal3:pokeball id set value "minecraft:skeleton_horse"
execute if entity @s[type=minecraft:salmon] run data modify storage 2mal3:pokeball id set value "minecraft:salmon"
execute if entity @s[type=minecraft:squid] run data modify storage 2mal3:pokeball id set value "minecraft:squid"
execute if entity @s[type=minecraft:turtle] run data modify storage 2mal3:pokeball id set value "minecraft:turtle"
execute if entity @s[type=minecraft:tropical_fish] run data modify storage 2mal3:pokeball id set value "minecraft:tropical_fish"
execute if entity @s[type=minecraft:villager] run data modify storage 2mal3:pokeball id set value "minecraft:villager"
execute if entity @s[type=minecraft:cat] run data modify storage 2mal3:pokeball id set value "minecraft:cat"
execute if entity @s[type=minecraft:strider] run data modify storage 2mal3:pokeball id set value "minecraft:strider"
execute if entity @s[type=minecraft:wolf] run data modify storage 2mal3:pokeball id set value "minecraft:wolf"
execute if entity @s[type=minecraft:zombie_horse] run data modify storage 2mal3:pokeball id set value "minecraft:zombie_horse"
execute if entity @s[type=minecraft:dolphin] run data modify storage 2mal3:pokeball id set value "minecraft:dolphin"

# neutral
execute if entity @s[type=minecraft:polar_bear] run data modify storage 2mal3:pokeball id set value "minecraft:polar_bear"
execute if entity @s[type=minecraft:wolf] run data modify storage 2mal3:pokeball id set value "minecraft:wolf"
execute if entity @s[type=minecraft:enderman] run data modify storage 2mal3:pokeball id set value "minecraft:enderman"
execute if entity @s[type=minecraft:spider] run data modify storage 2mal3:pokeball id set value "minecraft:spider"
execute if entity @s[type=minecraft:llama] run data modify storage 2mal3:pokeball id set value "minecraft:llama"
execute if entity @s[type=minecraft:pufferfish] run data modify storage 2mal3:pokeball id set value "minecraft:pufferfish"
execute if entity @s[type=minecraft:piglin] run data modify storage 2mal3:pokeball id set value "minecraft:piglin"
execute if entity @s[type=minecraft:zombified_piglin] run data modify storage 2mal3:pokeball id set value "minecraft:zombified_piglin"

# hostile
execute if entity @s[type=minecraft:drowned] run data modify storage 2mal3:pokeball id set value "minecraft:drowned"
execute if entity @s[type=minecraft:zombie] run data modify storage 2mal3:pokeball id set value "minecraft:zombie"
execute if entity @s[type=minecraft:husk] run data modify storage 2mal3:pokeball id set value "minecraft:husk"
execute if entity @s[type=minecraft:zombie_villager] run data modify storage 2mal3:pokeball id set value "minecraft:zombie_villager"
execute if entity @s[type=minecraft:skeleton] run data modify storage 2mal3:pokeball id set value "minecraft:skeleton"
execute if entity @s[type=minecraft:wither_skeleton] run data modify storage 2mal3:pokeball id set value "minecraft:wither_skeleton"
execute if entity @s[type=minecraft:stray] run data modify storage 2mal3:pokeball id set value "minecraft:stray"
execute if entity @s[type=minecraft:phantom] run data modify storage 2mal3:pokeball id set value "minecraft:phantom"
execute if entity @s[type=minecraft:vindicator] run data modify storage 2mal3:pokeball id set value "minecraft:vindicator"
execute if entity @s[type=minecraft:pillager] run data modify storage 2mal3:pokeball id set value "minecraft:pillager"
execute if entity @s[type=minecraft:ghast] run data modify storage 2mal3:pokeball id set value "minecraft:ghast"
execute if entity @s[type=minecraft:magma_cube] run data modify storage 2mal3:pokeball id set value "minecraft:magma_cube"
execute if entity @s[type=minecraft:blaze] run data modify storage 2mal3:pokeball id set value "minecraft:blaze"
execute if entity @s[type=minecraft:guardian] run data modify storage 2mal3:pokeball id set value "minecraft:guardian"
execute if entity @s[type=minecraft:shulker] run data modify storage 2mal3:pokeball id set value "minecraft:shulker"
execute if entity @s[type=minecraft:silverfish] run data modify storage 2mal3:pokeball id set value "minecraft:silverfish"
execute if entity @s[type=minecraft:slime] run data modify storage 2mal3:pokeball id set value "minecraft:slime"
execute if entity @s[type=minecraft:vex] run data modify storage 2mal3:pokeball id set value "minecraft:vex"
execute if entity @s[type=minecraft:witch] run data modify storage 2mal3:pokeball id set value "minecraft:witch"
execute if entity @s[type=minecraft:piglin_brute] run data modify storage 2mal3:pokeball id set value "minecraft:piglin_brute"
execute if entity @s[type=minecraft:hoglin] run data modify storage 2mal3:pokeball id set value "minecraft:hoglin"
execute if entity @s[type=minecraft:zoglin] run data modify storage 2mal3:pokeball id set value "minecraft:zoglin"
execute if entity @s[type=minecraft:cave_spider] run data modify storage 2mal3:pokeball id set value "minecraft:cave_spider"

# Saves entity data
data modify storage 2mal3:pokeball data set from entity @s
scoreboard players set $poba.data poba.data 1

# Saves the name of the entity
tag @s add poba.this
setblock ~ 255 ~ oak_sign{Text1:'{"selector":"@e[tag=poba.this]","color":"green"}'} replace
tag @s remove poba.this

# Clean up the data
data remove storage 2mal3:pokeball data.Pos
execute if entity @s[type=minecraft:villager] run function 2mal3:poba/catch/villager

# Kills the captured entity
tp @s ~ -1000 ~