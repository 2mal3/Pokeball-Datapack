# Description: Ask if you want to uninstall
# Called from: #uninstall
# Datapack by 2mal3

# ask
tellraw @s [{"text":"Do you really want to deinstall the Pokeball Datapack","color":"red"},{"text":" v","color":"red"},{"score":{"name":"$poba.v1","objective":"poba.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"$poba.v2","objective":"poba.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"$poba.v3","objective":"poba.data"},"color":"red"},{"translate":" by 2mal3?","color":"red"},{"text":"\n"},{"text":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"}},{"text":" \u0020"},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:poba/core/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]

# gamelog info
execute if score $poba.debug poba.data matches 1 run tellraw @a[tag=poba.debug] [{"text":"[","color":"gray"},{"text":"Pokeball","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]:","color":"gray"},{"text":" Asking player to uninstall.","color":"green"}]
