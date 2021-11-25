####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change Cast Mode
scoreboard players add #MWL 2ndRoleMode 1
execute if score #MWL 2ndRoleMode matches 3.. run scoreboard players set #MWL 2ndRoleMode 0

## Set inventory
function mwj:system/setting_phase/choose_game_rule/set_inventory