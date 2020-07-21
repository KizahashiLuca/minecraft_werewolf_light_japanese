###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.10 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f15秒"'}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f30秒"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f60秒"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f90秒"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f120秒"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f180秒"'}} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f300秒"'}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set Nether Star above Hide Time
execute if score #MWL HideTime matches 1 run replaceitem entity @p[tag=Host] inventory.1 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL HideTime matches 2 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL HideTime matches 4 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL HideTime matches 6 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL HideTime matches 8 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL HideTime matches 12 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL HideTime matches 20 run replaceitem entity @p[tag=Host] inventory.7 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1