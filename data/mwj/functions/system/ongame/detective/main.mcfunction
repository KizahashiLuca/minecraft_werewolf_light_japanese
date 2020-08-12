###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Set Scoreboard
scoreboard players set @s RoleOfNum 1
scoreboard players reset @s TargetOfRole

## Detect Dropping Redstone Torch
execute as @s[scores={DropTorch=1,RoleDone=0}] run function mwj:system/ongame/detective/detect_torch_dropped
execute as @s[scores={DropTorch=1,RoleDone=1}] run function mwj:system/ongame/roles/message_error

## Detect Page Role
execute as @s[scores={TurnPageRight=1,RoleDone=0}] run function mwj:system/ongame/detective/message_to_detective
execute as @s[scores={TurnPageLeft=1,RoleDone=0}] run function mwj:system/ongame/detective/message_to_detective
execute as @s[scores={TurnPageRight=1,RoleDone=1}] run function mwj:system/ongame/roles/message_error
execute as @s[scores={TurnPageLeft=1,RoleDone=1}] run function mwj:system/ongame/roles/message_error

## Send a Result to Detective
execute as @s[scores={RoleTrigger=1..10,RoleDone=0}] run function mwj:system/ongame/roles/calculation
execute as @s[scores={RoleTrigger=1..10,RoleDone=1}] run function mwj:system/ongame/roles/message_error

## Send a Result Message to Detective
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={CurrentRole=31,RoleOfNum=1,RoleDone=0}] TargetOfRole run function mwj:system/ongame/detective/result

## Reset Scoreboard
scoreboard players reset @s RoleOfNum

## Enable Detective Trigger
scoreboard players reset @s TurnPageRight
scoreboard players reset @s TurnPageLeft
scoreboard players reset @s RoleTrigger
scoreboard players enable @s TurnPageRight
scoreboard players enable @s TurnPageLeft
scoreboard players enable @s RoleTrigger

## Death
scoreboard players set @s[scores={DeathCount=1}] RoleDone 1