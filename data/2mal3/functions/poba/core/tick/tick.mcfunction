# Description: Main loop every tick
# Called from tag: minecraft:tick
# Datapack by 2mal3

# Pokeball projectile
execute as @e[type=minecraft:snowball,tag=!poba.pokeball_projectile] if predicate 2mal3:poba/pokeball_projectile at @s run function 2mal3:poba/projectile/init

execute as @e[type=minecraft:item,tag=poba.pokeball] unless predicate 2mal3:poba/is_riding_snowball at @s run function 2mal3:poba/projectile/landed


# Fixes a visual bug that the pokeball is not displayed
execute as @e[type=minecraft:snowball,tag=poba.pokeball_projectile] run function 2mal3:poba/projectile/vis_fix
scoreboard players operation $poba.vis_fix poba.data *= $poba.-1 poba.data