# Description: Uninstall the datapack
# Called from: core/uninstall/uninstall_ask
# Datapack by 2mal3

# send remove message
tellraw @a [{"text":"Pokeball Datapack v1.0.1 by 2mal3 was successfully uninstalled."}]

# remove scoreboards
scoreboard objectives remove poba.data
scoreboard objectives remove poba.debug_mode

# clear pokeball
clear @a minecraft:slime_ball{CustomModelData:3330101}

# stop ticks
schedule clear 2mal3:poba/core/tick/second

# disable datapack
datapack disable "file/Pokeball-Datapack-v1.0.1"
datapack disable "file/Pokeball-Datapack-v1.0.1.zip"
