####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Scoreboard
scoreboard players set @s TagOfRoleWork 1
scoreboard players reset @s TargetOfRole

## Detect Dropping Redstone Torch
execute as @s[scores={DropTorch=1,RoleDone=0}] run function mwj:system/game_phase/current_role/medium/detect_torch_dropped
execute as @s[scores={DropTorch=1,RoleDone=1}] run function mwj:system/game_phase/common/roles/message_error

## Detect Page Role
execute as @s[scores={TurnPageRight=1,RoleDone=0}] run function mwj:system/game_phase/current_role/medium/message_to_medium
execute as @s[scores={TurnPageLeft=1,RoleDone=0}] run function mwj:system/game_phase/current_role/medium/message_to_medium
execute as @s[scores={TurnPageRight=1,RoleDone=1}] run function mwj:system/game_phase/common/roles/message_error
execute as @s[scores={TurnPageLeft=1,RoleDone=1}] run function mwj:system/game_phase/common/roles/message_error

## Send a Result to Medium
execute as @s[scores={RoleTrigger=1..10,RoleDone=0}] run function mwj:system/game_phase/common/roles/calculation
execute as @s[scores={RoleTrigger=1..10,RoleDone=1}] run function mwj:system/game_phase/common/roles/message_error

## Send a Result Message to Medium
execute as @a[predicate=mwj:player/player] if score @s NumOfPlayers = @p[scores={CurrentRole=28,TagOfRoleWork=1,RoleDone=0}] TargetOfRole run function mwj:system/game_phase/current_role/medium/result

## Reset Scoreboard
scoreboard players reset @s TagOfRoleWork

## Enable Medium Trigger
scoreboard players reset @s TurnPageRight
scoreboard players reset @s TurnPageLeft
scoreboard players reset @s RoleTrigger
scoreboard players enable @s TurnPageRight
scoreboard players enable @s TurnPageLeft
scoreboard players enable @s RoleTrigger

## Death
scoreboard players set @s[scores={DeathCount=1}] RoleDone 1