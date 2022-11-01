####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear inventory
clear @p[predicate=mwj:player/host]

## Replace inventory
scoreboard players operation @p[predicate=mwj:player/host] Digit100 = #MWL GlowTime
scoreboard players operation @p[predicate=mwj:player/host] Digit100 /= #MWL Num00100
scoreboard players operation @p[predicate=mwj:player/host] Digit010 = #MWL GlowTime
scoreboard players operation @p[predicate=mwj:player/host] Digit010 %= #MWL Num00100
scoreboard players operation @p[predicate=mwj:player/host] Digit010 /= #MWL Num00010
scoreboard players operation @p[predicate=mwj:player/host] Digit001 = #MWL GlowTime
scoreboard players operation @p[predicate=mwj:player/host] Digit001 %= #MWL Num00100
scoreboard players operation @p[predicate=mwj:player/host] Digit001 %= #MWL Num00010
loot replace entity @p[predicate=mwj:player/host] inventory.4 loot mwj:system/setting_phase/master/choose_glow_time
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:system/setting_phase/common/digit_100
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:system/setting_phase/common/digit_010
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:system/setting_phase/common/digit_001
loot replace entity @p[predicate=mwj:player/host] inventory.15 loot mwj:system/setting_phase/common/character/percent
loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:system/setting_phase/common/cancel
loot replace entity @p[predicate=mwj:player/host] inventory.22 loot mwj:system/setting_phase/common/reset
loot replace entity @p[predicate=mwj:player/host] inventory.25 loot mwj:system/setting_phase/common/ok

## Change phase
scoreboard players set #MWL Phase 82