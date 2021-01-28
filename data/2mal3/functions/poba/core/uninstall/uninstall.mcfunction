# Description: Uninstalls the Datapack
# Called from function: core/uninstall/uninstall_ask
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={poba.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack uninstalled!","color":"green"}]


# Stops the loops
schedule clear 2mal3:poba/core/tick/second

# Deletes the scoreboards
scoreboard objectives remove poba.data
scoreboard objectives remove poba.debug_mode

# Sends an uninstallation message to all players
tellraw @a [{"text":"Pokeball Datapack v1.0.0 by 2mal3 was successfully uninstalled."}]

# Disables the datapack
datapack disable "file/Pokeball-Datapack-v2.0.0"
datapack disable "file/Pokeball-Datapack-v2.0.0.zip"
