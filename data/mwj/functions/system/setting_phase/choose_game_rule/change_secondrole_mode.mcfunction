####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change 2ndrole mode
scoreboard players add #MWL 2ndRoleMode 1
execute if predicate mwj:system/setting_phase/choose_game_rule/secondrole_mode_more_than_limit run scoreboard players set #MWL 2ndRoleMode 0

## Set inventory
function mwj:system/setting_phase/choose_game_rule/change_to