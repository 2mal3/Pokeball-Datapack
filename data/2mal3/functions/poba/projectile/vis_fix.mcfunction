# Description: Fixes the look of the projectile
# Called from function: 2mal3:poba/core/tick/tick
# Datapack by 2mal3

execute if score $poba.vis_fix poba.data matches 1 run data modify entity @s Air set value 0s
execute if score $poba.vis_fix poba.data matches -1 run data modify entity @s Air set value 1s