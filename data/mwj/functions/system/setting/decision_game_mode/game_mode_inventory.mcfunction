###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Replace Inventory
replaceitem entity @p[tag=host] inventory.12 minecraft:map{display:{Name:"\"\\u00A7r通常人狼モード\""}} 1
replaceitem entity @p[tag=host] inventory.13 minecraft:map{display:{Name:"\"\\u00A7r村人2人生存モード\""}} 1
replaceitem entity @p[tag=host] inventory.14 minecraft:map{display:{Name:"\"\\u00A7r我々だ！人狼モード\""}} 1
replaceitem entity @p[tag=host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Selected Role
execute if score Time GameMode matches 1 run replaceitem entity @p[tag=host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GameMode matches 2 run replaceitem entity @p[tag=host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time GameMode matches 3 run replaceitem entity @p[tag=host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1