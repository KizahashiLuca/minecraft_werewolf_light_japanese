###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Clear Inventory
clear @p[tag=Host]

## Rest become villager
scoreboard players operation #MWL AddedVilla = #MWL AddedRole

## Set Inventory
function mwj:system/setting/decision_role_addition/role_addition_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] SelectWolf 0
scoreboard players set @p[tag=Host] SelectMadman 0
scoreboard players set @p[tag=Host] SelectFox 0
scoreboard players set @p[tag=Host] SelectVilla 0
scoreboard players set @p[tag=Host] SelectSeer 0
scoreboard players set @p[tag=Host] SelectMedium 0
scoreboard players set @p[tag=Host] SelectMason 0
scoreboard players set @p[tag=Host] SelectDetec 0
scoreboard players set @p[tag=Host] SelectThief 0
scoreboard players set @p[tag=Host] SelectCat 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectReset 0
scoreboard players set @p[tag=Host] SelectOkay 0
scoreboard players set @p[tag=Host] SelectDecide 0
scoreboard players set @p[tag=Host] ThrowItem 0

## Change Mode
scoreboard players set #MWL Phase 98