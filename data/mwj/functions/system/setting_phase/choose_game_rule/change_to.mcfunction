####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear inventory
clear @p[predicate=mwj:player/host]

## Replace inventory
scoreboard players operation @p[predicate=mwj:player/host] GameMode = #MWL GameMode
scoreboard players operation @p[predicate=mwj:player/host] DummyRoleMode = #MWL DummyRoleMode
scoreboard players operation @p[predicate=mwj:player/host] 2ndRoleMode = #MWL 2ndRoleMode
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:system/setting_phase/choose_game_rule/game_mode
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:system/setting_phase/choose_game_rule/dummyrole_mode
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:system/setting_phase/choose_game_rule/secondrole_mode
loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:system/setting_phase/common/cancel
loot replace entity @p[predicate=mwj:player/host] inventory.22 loot mwj:system/setting_phase/common/reset
loot replace entity @p[predicate=mwj:player/host] inventory.25 loot mwj:system/setting_phase/common/ok

## Change phase
scoreboard players set #MWL Phase 84