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
loot replace entity @p[tag=Host] inventory.11 loot mwj:item/special/twisting_vines
loot replace entity @p[tag=Host] inventory.12 loot mwj:item/special/spyglass
loot replace entity @p[tag=Host] inventory.13 loot mwj:item/common/air
loot replace entity @p[tag=Host] inventory.14 loot mwj:item/common/air
loot replace entity @p[tag=Host] inventory.15 loot mwj:item/common/air

## Set scoreboard
scoreboard players operation #MWL AddedVines = #MWL AddedItem1
scoreboard players operation #MWL AddedSpyglass = #MWL AddedItem2
# scoreboard players operation #MWL Added = #MWL AddedItem3
# scoreboard players operation #MWL Added = #MWL AddedItem4
# scoreboard players operation #MWL Added = #MWL AddedItem5