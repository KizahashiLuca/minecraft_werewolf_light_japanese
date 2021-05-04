####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear Inventory
clear @p[tag=Host]

## Set Inventory
function mwj:system/setting/choose_mode/set_inventory

## Set Scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] ChosenCasting 0
scoreboard players set @p[tag=Host] ChosenDummyRole 0
scoreboard players set @p[tag=Host] ChosenHideTime 0
scoreboard players set @p[tag=Host] ChosenGlowTime 0
scoreboard players set @p[tag=Host] ChosenGameTime 0
scoreboard players set @p[tag=Host] ChosenGameMode 0
scoreboard players set @p[tag=Host] ChosenItemAdd 0
scoreboard players set @p[tag=Host] ChosenRoleAdd 0
scoreboard players set @p[tag=Host] ChosenCastSet 0
scoreboard players set @p[tag=Host] SelectCancel 0
scoreboard players set @p[tag=Host] SelectOkay 0

## Change Mode
scoreboard players set #MWL Phase 80