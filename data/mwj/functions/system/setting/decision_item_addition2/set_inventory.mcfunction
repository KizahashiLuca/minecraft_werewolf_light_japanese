###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:item/special/elytra
loot replace entity @p[tag=Host] inventory.12 loot mwj:item/special/snowball
loot replace entity @p[tag=Host] inventory.13 loot mwj:item/special/potion_invisible
loot replace entity @p[tag=Host] inventory.14 loot mwj:item/special/potion_speed
loot replace entity @p[tag=Host] inventory.15 loot mwj:item/special/potion_jump

## Set scoreboard
scoreboard players operation #MWL AddedElytra = #MWL AddedItem1
scoreboard players operation #MWL AddedSnowball = #MWL AddedItem2
scoreboard players operation #MWL AddedInvis = #MWL AddedItem3
scoreboard players operation #MWL AddedSpeed = #MWL AddedItem4
scoreboard players operation #MWL AddedJump = #MWL AddedItem5