####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear inventory
clear @p[predicate=mwj:player/host]

## Replace inventory
scoreboard players operation @p[predicate=mwj:player/host] Digit100 = #MWL HideTime
scoreboard players operation @p[predicate=mwj:player/host] Digit100 /= #MWL Num00100
scoreboard players operation @p[predicate=mwj:player/host] Digit010 = #MWL HideTime
scoreboard players operation @p[predicate=mwj:player/host] Digit010 %= #MWL Num00100
scoreboard players operation @p[predicate=mwj:player/host] Digit010 /= #MWL Num00010
scoreboard players operation @p[predicate=mwj:player/host] Digit001 = #MWL HideTime
scoreboard players operation @p[predicate=mwj:player/host] Digit001 %= #MWL Num00100
scoreboard players operation @p[predicate=mwj:player/host] Digit001 %= #MWL Num00010
loot replace entity @p[predicate=mwj:player/host] inventory.4 loot mwj:system/setting_phase/master/choose_hide_time
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:system/setting_phase/common/digit_100
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:system/setting_phase/common/digit_010
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:system/setting_phase/common/digit_001
loot replace entity @p[predicate=mwj:player/host] inventory.15 loot mwj:system/setting_phase/common/alphabet/s
loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:system/setting_phase/common/cancel
loot replace entity @p[predicate=mwj:player/host] inventory.22 loot mwj:system/setting_phase/common/reset
loot replace entity @p[predicate=mwj:system/setting_phase/choose_hide_time/hide_time_not_zero] inventory.25 loot mwj:system/setting_phase/common/ok

## Change phase
scoreboard players set #MWL Phase 81