####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Store preview num of roles
scoreboard players operation #MWL PrevNumOfRoles = #MWL NumOfRoles 

## Count players
function mwj:system/common/count_players

## If more
execute if score #MWL PrevNumOfRoles < #MWL NumOfRoles run function mwj:system/common/roles/recount_roles/add_roles_more

## If less
execute if score #MWL PrevNumOfRoles > #MWL NumOfRoles run function mwj:system/common/roles/recount_roles/add_roles_less