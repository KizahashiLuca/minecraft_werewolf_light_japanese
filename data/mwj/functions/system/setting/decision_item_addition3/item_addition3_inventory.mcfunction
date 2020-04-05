###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.9 minecraft:nether_star{display:{Name:"\"\\u00A7r前へ\""}} 1
replaceitem entity @p[tag=Host] inventory.11 minecraft:elytra{display:{Name:"\"\\u00A7rエリトラ\"",Lore:["\"滑空ができる\""]},Unbreakable:1,HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.17 minecraft:nether_star{display:{Name:"\"\\u00A7r次へ\""}} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7rキャンセル\""}} 1
replaceitem entity @p[tag=Host] inventory.22 minecraft:map{display:{Name:"\"\\u00A7rリセット\""}} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:tripwire_hook{display:{Name:"\"\\u00A7rこれで決定\""}} 1

## Set Nether Star above Added Item
execute if score Time AddedElytra matches 1 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済み\""}} 1