###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:light_blue_concrete{display:{Name:'"\\u00A7r\\u00A7f偽予言者の追加"'}} 1
# replaceitem entity @p[tag=Host] inventory.12 minecraft:blue_concrete{display:{Name:'"\\u00A7r\\u00A7f賢者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:red_concrete{display:{Name:'"\\u00A7r\\u00A7f白狼の追加"'}} 1
# replaceitem entity @p[tag=Host] inventory.14 minecraft:pink_concrete{display:{Name:'"\\u00A7r\\u00A7f狂信者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:purple_concrete{display:{Name:'"\\u00A7r\\u00A7f背徳者の追加"'}} 1

## Set scoreboard
scoreboard players operation #MWL AddedFkSeer = #MWL AddedRole1
scoreboard players operation #MWL AddedSage = #MWL AddedRole2
scoreboard players operation #MWL AddedWhWolf = #MWL AddedRole3
scoreboard players operation #MWL AddedFanatic = #MWL AddedRole4
scoreboard players operation #MWL AddedImmoral = #MWL AddedRole5