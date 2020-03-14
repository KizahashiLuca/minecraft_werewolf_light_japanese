###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=host] inventory.10 minecraft:paper{display:{Name:"\"\\u00A7r15秒\""}} 1
replaceitem entity @p[tag=host] inventory.11 minecraft:paper{display:{Name:"\"\\u00A7r30秒\""}} 1
replaceitem entity @p[tag=host] inventory.12 minecraft:paper{display:{Name:"\"\\u00A7r60秒\""}} 1
replaceitem entity @p[tag=host] inventory.13 minecraft:paper{display:{Name:"\"\\u00A7r90秒\""}} 1
replaceitem entity @p[tag=host] inventory.14 minecraft:paper{display:{Name:"\"\\u00A7r120秒\""}} 1
replaceitem entity @p[tag=host] inventory.15 minecraft:paper{display:{Name:"\"\\u00A7r180秒\""}} 1
replaceitem entity @p[tag=host] inventory.16 minecraft:paper{display:{Name:"\"\\u00A7r300秒\""}} 1
replaceitem entity @p[tag=host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Hide Time
execute if score Time HideTime matches 1 run replaceitem entity @p[tag=host] inventory.1 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time HideTime matches 2 run replaceitem entity @p[tag=host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time HideTime matches 4 run replaceitem entity @p[tag=host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time HideTime matches 6 run replaceitem entity @p[tag=host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time HideTime matches 8 run replaceitem entity @p[tag=host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time HideTime matches 12 run replaceitem entity @p[tag=host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1
execute if score Time HideTime matches 20 run replaceitem entity @p[tag=host] inventory.7 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1