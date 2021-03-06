# Description: Init datapack
# Called from tag: load:load
# Datapack by 2mal3

# add scoreboards
scoreboard objectives add poba.data dummy
scoreboard objectives add poba.debug_mode dummy

# set version in format xx.xx.xx
scoreboard players set $poba.version poba.data 010003


# send reload massage after 4 sekonds
execute unless score $poba.first_run poba.data matches 1 run schedule function 2mal3:poba/core/first_run 4s

# start other ticks
function 2mal3:poba/core/tick/second

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Reloaded datapack!","color":"green"}]
