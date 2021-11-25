####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear Inventory
clear @p[tag=Host]

## Replace Inventory
scoreboard players operation @p[tag=Host] GameMode = #MWL GameMode
scoreboard players operation @p[tag=Host] DummyRoleMode = #MWL DummyRoleMode
scoreboard players operation @p[tag=Host] 2ndRoleMode = #MWL 2ndRoleMode
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/choose_game_rule/game_mode
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/choose_game_rule/dummyrole_mode
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/choose_game_rule/secondrole_mode
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/cancel
loot replace entity @p[tag=Host] inventory.22 loot mwj:setting/common/reset
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/ok