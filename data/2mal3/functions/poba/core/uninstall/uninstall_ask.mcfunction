# Description: Ask if you want to uninstall
# Called from: #uninstall
# Datapack by 2mal3

# ask
tellraw @s [{"text":"Do you really want to deinstall the Pokeball Datapack by 2mal3.\n","color":"red"},{"text":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"}},{"text":" \u0020"},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:poba/core/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]
