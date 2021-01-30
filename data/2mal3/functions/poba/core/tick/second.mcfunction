# Description: Tick commands every second
# Called from: 2mal3:poba/core/reload, 2mal3:poba/core/tick/second
# Datapack by 2mal3

# cathch
execute as @e[type=minecraft:item,predicate=2mal3:poba/pokeball] at @s unless block ~ ~-0.1 ~ #2mal3:poba/air as @e[type=!#2mal3:poba/no_real_entitys,distance=..1.5,sort=random,limit=1] at @s run function 2mal3:poba/catch/test

# freed entitys
execute as @e[tag=poba.caught] at @s run function 2mal3:poba/free

# call the function next second
schedule function 2mal3:poba/core/tick/second 1s
