###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:red_stained_glass{display:{Name:'"\\u00A7r\\u00A7f人狼の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:pink_stained_glass{display:{Name:'"\\u00A7r\\u00A7f狂人の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:lime_stained_glass{display:{Name:'"\\u00A7r\\u00A7f村人の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:light_blue_stained_glass{display:{Name:'"\\u00A7r\\u00A7f予言者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:yellow_stained_glass{display:{Name:'"\\u00A7r\\u00A7f霊媒師の追加"'}} 1

## Set scoreboard
scoreboard players operation #MWL AddedWolf = #MWL AddedRole1
scoreboard players operation #MWL AddedMadman = #MWL AddedRole2
scoreboard players operation #MWL AddedVilla = #MWL AddedRole3
scoreboard players operation #MWL AddedSeer = #MWL AddedRole4
scoreboard players operation #MWL AddedMedium = #MWL AddedRole5