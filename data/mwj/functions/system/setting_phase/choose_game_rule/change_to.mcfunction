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
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:setting_phase/choose_game_rule/game_mode
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:setting_phase/choose_game_rule/dummyrole_mode
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:setting_phase/choose_game_rule/secondrole_mode
loot replace entity @p[predicate=mwj:player/host] inventory.15 loot mwj:setting_phase/choose_game_rule/distribute_scrap_mode
loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:setting_phase/common/cancel
loot replace entity @p[predicate=mwj:player/host] inventory.22 loot mwj:setting_phase/common/reset
loot replace entity @p[predicate=mwj:player/host] inventory.25 loot mwj:setting_phase/common/ok

## Change phase
scoreboard players set #MWL Phase 74