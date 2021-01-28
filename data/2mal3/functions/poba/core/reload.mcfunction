# Description: Commands when reloading the datapack
# Called from tag: minecraft:reaload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack reloaded!","color":"green"}]


# Adds scoreboards
scoreboard objectives add poba.data dummy
scoreboard objectives add poba.debug_mode dummy

# Set variables
scoreboard players set $poba.-1 poba.data -1
scoreboard players set $poba.vis_fix poba.data 1

# Set the version in format: xx.xx.xx
scoreboard players set $poba.version poba.data 020000

# Adds data storages
data merge storage 2mal3:pokeball {"id":"",data:{}}

# Executes the installation when the datapack is started for the first time
execute unless score $poba.first_run poba.data matches 1 run schedule function 2mal3:poba/core/first_run 4s

# Starts the loops
function 2mal3:poba/core/tick/second
