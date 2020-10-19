# Description: Init datapack
# Called from: #reaload
# Datapack by 2mal3

# add scoreboards
scoreboard objectives add poba.data dummy

# set version
scoreboard players set $poba.v1 poba.data 1
scoreboard players set $poba.v2 poba.data 0
scoreboard players set $poba.v3 poba.data 1
scoreboard players set $poba.version poba.data 10010

# send reload massage after 4 sekonds
execute unless score $poba.first_run poba.data matches 1 run schedule function 2mal3:poba/core/first_run 4s

# start other ticks
function 2mal3:poba/core/tick/second

# gamelog info
execute if score $poba.debug poba.data matches 1 run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]:","color":"gray"},{"text":" Reloaded datapack.","color":"green"}]
