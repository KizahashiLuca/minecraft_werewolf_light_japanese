###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:light_blue_concrete{display:{Name:'"\\u00A7r\\u00A7f偽予言者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:red_concrete{display:{Name:'"\\u00A7r\\u00A7f白狼の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:purple_concrete{display:{Name:'"\\u00A7r\\u00A7f背徳者の追加"'}} 1
# replaceitem entity @p[tag=Host] inventory.14 minecraft:white_concrete{display:{Name:'"\\u00A7r\\u00A7f追加役職の追加"'}} 1
# replaceitem entity @p[tag=Host] inventory.15 minecraft:white_concrete{display:{Name:'"\\u00A7r\\u00A7f追加役職の追加"'}} 1

## Set scoreboard
scoreboard players operation #MWL AddedFkSeer = #MWL AddedRole1
scoreboard players operation #MWL AddedWhWolf = #MWL AddedRole2
scoreboard players operation #MWL AddedImmoral = #MWL AddedRole3
# scoreboard players operation #MWL Added = #MWL AddedRole4
# scoreboard players operation #MWL Added = #MWL AddedRole5