# Description: First datapack run
# Called from: 2mal3:poba/core/reload
# Datapack by 2mal3

# send message
tellraw @a [{"text":"Pokeball Datapack v1.0.1 by 2mal3 was installed!","color":"blue"}]


# reset
scoreboard players set $poba.first_run poba.data 1

# gamelog info
execute if score $poba.debug poba.data matches 1 run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]:","color":"gray"},{"text":" First datapack run.","color":"green"}]
