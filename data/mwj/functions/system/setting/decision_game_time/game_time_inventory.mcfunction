###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.10 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f5分"'}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f10分"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f15分"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f20分"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f25分"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f30分"'}} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:paper{display:{Name:'"\\u00A7r\\u00A7f60分"'}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set Nether Star above Game Time
execute if score #MWL GameTime matches 1 run replaceitem entity @p[tag=Host] inventory.1 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameTime matches 2 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameTime matches 3 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameTime matches 4 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameTime matches 5 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameTime matches 6 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameTime matches 12 run replaceitem entity @p[tag=Host] inventory.7 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1