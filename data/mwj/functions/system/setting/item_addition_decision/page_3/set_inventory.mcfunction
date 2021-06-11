####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:item/special/trident
loot replace entity @p[tag=Host] inventory.12 loot mwj:item/special/conduit
loot replace entity @p[tag=Host] inventory.13 loot mwj:item/special/crossbow
loot replace entity @p[tag=Host] inventory.14 loot mwj:item/common/air
execute if score #MWL Version matches 15.. run loot replace entity @p[tag=Host] inventory.14 loot mwj:item/special/honey_block
loot replace entity @p[tag=Host] inventory.15 loot mwj:item/common/air
execute if score #MWL Version matches 16.. run loot replace entity @p[tag=Host] inventory.15 loot mwj:item/special/lantern

## Set scoreboard
scoreboard players operation #MWL AddedTrident = #MWL AddedItem1
scoreboard players operation #MWL AddedConduit = #MWL AddedItem2
scoreboard players operation #MWL AddedCrossbow = #MWL AddedItem3
scoreboard players operation #MWL AddedHoneyBlock = #MWL AddedItem4
scoreboard players operation #MWL AddedLantern = #MWL AddedItem5