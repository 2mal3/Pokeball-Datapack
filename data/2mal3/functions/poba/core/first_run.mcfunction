# Description: First datapack run
# Called from: 2mal3:poba/core/reload
# Datapack by 2mal3

# send message
tellraw @a [{"text":"Pokeball Datapack v1.0.3 by 2mal3 was installed!","color":"blue"}]


# reset
scoreboard players set $poba.first_run poba.data 1
