####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## If less
scoreboard players operation #MWL TmpNumOfRoles = #MWL PrevNumOfRoles
scoreboard players operation #MWL TmpNumOfRoles -= #MWL NumOfRoles
scoreboard players operation #MWL NumOfRestRoles -= #MWL TmpNumOfRoles
scoreboard players set #MWL TmpNumOfRoles 0
execute if predicate mwj:system/common/roles/recount_roles/minus_rest_roles run scoreboard players operation #MWL TmpNumOfRoles -= #MWL NumOfRestRoles
execute if predicate mwj:system/common/roles/recount_roles/minus_rest_roles run scoreboard players set #MWL NumOfRestRoles 0
execute if predicate mwj:system/common/roles/decrease_roles/num_of_roles/one_or_more run function mwj:system/common/roles/decrease_roles/main

## Set Prev choice
function mwj:system/common/roles/set_prev_roles