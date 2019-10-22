###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Replace Inventory
replaceitem entity @p[tag=host] inventory.11 minecraft:paper{display:{Name:"\"\\u00A7r10分\""}} 1
replaceitem entity @p[tag=host] inventory.12 minecraft:paper{display:{Name:"\"\\u00A7r15分\""}} 1
replaceitem entity @p[tag=host] inventory.13 minecraft:paper{display:{Name:"\"\\u00A7r20分\""}} 1
replaceitem entity @p[tag=host] inventory.14 minecraft:paper{display:{Name:"\"\\u00A7r25分\""}} 1
replaceitem entity @p[tag=host] inventory.15 minecraft:paper{display:{Name:"\"\\u00A7r30分\""}} 1
replaceitem entity @p[tag=host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Selected Role
execute if score Time LimitTime matches 2 run replaceitem entity @p[tag=host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time LimitTime matches 3 run replaceitem entity @p[tag=host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time LimitTime matches 4 run replaceitem entity @p[tag=host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time LimitTime matches 5 run replaceitem entity @p[tag=host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time LimitTime matches 6 run replaceitem entity @p[tag=host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1