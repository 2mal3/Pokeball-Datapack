# Description: First datapack run
# Called from: 2mal3:poba/core/reload
# Datapack by 2mal3

# send message
tellraw @a [{"text":"Pokeball Datapack v","color":"blue"},{"score":{"name":"$poba.v1","objective":"poba.data"},"color":"blue"},{"text":".","color":"blue"},{"score":{"name":"$poba.v2","objective":"poba.data"},"color":"blue"},{"text":".","color":"blue"},{"score":{"name":"$poba.v3","objective":"poba.data"},"color":"blue"},{"translate":" by 2mal3 was installed!","color":"blue"}]

# set scores
scoreboard players set $poba.debug poba.data 0

# reset
scoreboard players set $poba.first_run poba.data 1

# gamelog info
execute if score $poba.debug poba.data matches 1 run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]:","color":"gray"},{"text":" First datapack run.","color":"green"}]
