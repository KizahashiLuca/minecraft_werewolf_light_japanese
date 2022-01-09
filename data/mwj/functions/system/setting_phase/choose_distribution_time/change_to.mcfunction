####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear inventory
clear @p[predicate=mwj:player/host]

## Replace inventory
scoreboard players operation #MWL Digit100 = #MWL DstrScrapTime
scoreboard players operation #MWL Digit100 /= #MWL Num00100
scoreboard players operation #MWL Digit010 = #MWL DstrScrapTime
scoreboard players operation #MWL Digit010 %= #MWL Num00100
scoreboard players operation #MWL Digit010 /= #MWL Num00010
scoreboard players operation #MWL Digit001 = #MWL DstrScrapTime
scoreboard players operation #MWL Digit001 %= #MWL Num00100
scoreboard players operation #MWL Digit001 %= #MWL Num00010
loot replace entity @p[predicate=mwj:player/host] inventory.4 loot mwj:setting_phase/master/choose_distribution_time
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:setting_phase/common/digit_100
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:setting_phase/common/digit_010
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:setting_phase/common/digit_001
loot replace entity @p[predicate=mwj:player/host] inventory.15 loot mwj:setting_phase/common/character/percent
loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:setting_phase/common/cancel
loot replace entity @p[predicate=mwj:player/host] inventory.22 loot mwj:setting_phase/common/reset
loot replace entity @p[predicate=mwj:player/host,predicate=mwj:setting_phase/choose_distribution_time/distribution_time_in_range] inventory.25 loot mwj:setting_phase/common/ok

## Change phase
scoreboard players set #MWL Phase 75