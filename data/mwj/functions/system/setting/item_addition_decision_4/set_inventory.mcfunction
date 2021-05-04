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
replaceitem entity @p[tag=Host] inventory.11 minecraft:air 1
execute if score #MWL Version matches 16.. run loot replace entity @p[tag=Host] inventory.11 loot mwj:item/special/twisting_vines
replaceitem entity @p[tag=Host] inventory.12 minecraft:air 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:air 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:air 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:air 1

## Set scoreboard
scoreboard players operation #MWL AddedVines = #MWL AddedItem1
# scoreboard players operation #MWL Added = #MWL AddedItem2
# scoreboard players operation #MWL Added = #MWL AddedItem3
# scoreboard players operation #MWL Added = #MWL AddedItem4
# scoreboard players operation #MWL Added = #MWL AddedItem5