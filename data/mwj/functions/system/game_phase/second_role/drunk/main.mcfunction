####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give milk bucket
execute as @s[advancements={mwj:killed_player=true},scores={2ndRoleGiven=0,2ndRoleDone=0}] run function mwj:system/game_phase/second_role/drunk/give_milk

## Consume milk
execute as @s[scores={2ndRoleDrunk=1..,2ndRoleGiven=1,2ndRoleDone=0}] run function mwj:system/game_phase/second_role/drunk/tell_roles/main