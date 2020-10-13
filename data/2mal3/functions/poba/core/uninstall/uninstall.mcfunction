# Description: Uninstall the datapack
# Called from: core/uninstall/uninstall_ask
# Datapack by 2mal3

# send remove message
tellraw @a [{"text":"Pokeball Datapack v"},{"score":{"name":"$poba.v1","objective":"poba.data"}},{"text":"."},{"score":{"name":"$poba.v2","objective":"poba.data"}},{"text":"."},{"score":{"name":"$poba.v3","objective":"poba.data"}},{"translate":" by 2mal3 was successfully uninstalled."}]

# remove scoreboards
scoreboard objectives remove poba.data

# clear pokeball
clear @a minecraft:slime_ball{CustomModelData:3330101}

# stop ticks
schedule clear 2mal3:poba/core/tick/second

# gamelog info
execute if score $poba.debug poba.data matches 1 run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]:","color":"gray"},{"text":" Uninstalled datapack.","color":"green"}]

# disable datapack
datapack disable "file/Pokeball-Datapack-v1.0.0"
datapack disable "file/Pokeball-Datapack-v1.0.0.zip"
