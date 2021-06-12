####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:item/special/stick
loot replace entity @p[tag=Host] inventory.12 loot mwj:item/special/totem_of_undying
loot replace entity @p[tag=Host] inventory.13 loot mwj:item/special/potion_death
loot replace entity @p[tag=Host] inventory.14 loot mwj:item/special/ender_pearl
loot replace entity @p[tag=Host] inventory.15 loot mwj:item/special/diamond_hoe

## Set scoreboard
scoreboard players operation #MWL AddedStick = #MWL AddedItem1
scoreboard players operation #MWL AddedTotem = #MWL AddedItem2
scoreboard players operation #MWL AddedDeath = #MWL AddedItem3
scoreboard players operation #MWL AddedPearl = #MWL AddedItem4
scoreboard players operation #MWL AddedHoe = #MWL AddedItem5