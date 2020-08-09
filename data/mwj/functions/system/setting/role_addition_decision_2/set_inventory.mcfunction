###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:purple_stained_glass{display:{Name:'"\\u00A7r\\u00A7f羽衣狐の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:green_stained_glass{display:{Name:'"\\u00A7r\\u00A7f共有者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:cyan_stained_glass{display:{Name:'"\\u00A7r\\u00A7f探偵の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:blue_stained_glass{display:{Name:'"\\u00A7r\\u00A7f怪盗の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:orange_stained_glass{display:{Name:'"\\u00A7r\\u00A7f猫又の追加"'}} 1

## Set scoreboard
scoreboard players operation #MWL AddedFox = #MWL AddedRole1
scoreboard players operation #MWL AddedMason = #MWL AddedRole2
scoreboard players operation #MWL AddedDetec = #MWL AddedRole3
scoreboard players operation #MWL AddedThief = #MWL AddedRole4
scoreboard players operation #MWL AddedCat = #MWL AddedRole5