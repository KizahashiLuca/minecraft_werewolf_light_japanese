###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.12 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f通常人狼モード"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f村人2人生存モード"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:map{display:{Name:'"\\u00A7r\\u00A7f殲滅モード"'}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set Nether Star above Selected Role
execute if score #MWL GameMode matches 1 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameMode matches 2 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1
execute if score #MWL GameMode matches 3 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}} 1