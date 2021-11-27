####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give milk bucket
execute as @s[advancements={mwj:killed_player=true},scores={2ndRoleGiven=0,2ndRoleDone=0}] run function mwj:system/game_phase/2ndrole/drunk/give_milk

## Consume milk
execute as @s[scores={2ndRoleDrunk=1..,2ndRoleGiven=1,2ndRoleDone=0}] run function mwj:system/game_phase/2ndrole/drunk/tell_roles/main