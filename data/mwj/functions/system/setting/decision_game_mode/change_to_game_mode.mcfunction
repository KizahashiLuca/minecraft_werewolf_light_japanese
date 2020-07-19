###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=Host]

## Set Inventory
function mwj:system/setting/decision_game_mode/game_mode_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectNormalWolf 0
scoreboard players set @p[tag=Host] SelectTwoAlive 0
scoreboard players set @p[tag=Host] SelectAnnihilate 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set #MWL Phase 84