###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:red_stained_glass{display:{Name:'"\\u00A7r\\u00A7f人狼の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:pink_stained_glass{display:{Name:'"\\u00A7r\\u00A7f狂人の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:lime_stained_glass{display:{Name:'"\\u00A7r\\u00A7f村人の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:light_blue_stained_glass{display:{Name:'"\\u00A7r\\u00A7f予言者の追加"'}} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:yellow_stained_glass{display:{Name:'"\\u00A7r\\u00A7f霊媒師の追加"'}} 1

## Set scoreboard
scoreboard players operation #MWL AddedWolf = #MWL AddedItem1
scoreboard players operation #MWL AddedMadman = #MWL AddedItem2
scoreboard players operation #MWL AddedVilla = #MWL AddedItem3
scoreboard players operation #MWL AddedSeer = #MWL AddedItem4
scoreboard players operation #MWL AddedMedium = #MWL AddedItem5