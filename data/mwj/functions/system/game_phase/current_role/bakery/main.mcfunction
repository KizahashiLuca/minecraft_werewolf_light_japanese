####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Dropping Redstone Torch
execute as @s[scores={DropTorch=1,RoleDone=0}] run function mwj:system/game_phase/current_role/bakery/detect_torch_dropped
execute as @s[scores={DropTorch=1,RoleDone=1}] run function mwj:system/game_phase/common/roles/message_error

## Death
scoreboard players set @s[scores={DeathCount=1}] RoleDone 1