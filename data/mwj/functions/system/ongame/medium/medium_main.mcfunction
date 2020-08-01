###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Set Scoreboard
scoreboard players set @s RoleOfNum 1
scoreboard players set @s RoleTarget 0

## Detect Dropping Redstone Torch
execute as @s[scores={DropTorch=1,DONE=0}] run function mwj:system/ongame/medium/medium_trigger
execute as @s[scores={DropTorch=1,DONE=1}] run function mwj:system/ongame/roles/message_error

## Detect Page Role
execute as @s[scores={TurnPageRight=1,DONE=0}] run function mwj:system/ongame/medium/medium_message
execute as @s[scores={TurnPageLeft=1,DONE=0}] run function mwj:system/ongame/medium/medium_message
execute as @s[scores={TurnPageRight=1,DONE=1}] run function mwj:system/ongame/roles/message_error
execute as @s[scores={TurnPageLeft=1,DONE=1}] run function mwj:system/ongame/roles/message_error

## Send a Result to Medium
execute as @s[scores={RoleTrigger=1..10,DONE=0}] run function mwj:system/ongame/roles/calculation
execute as @s[scores={RoleTrigger=1..10,DONE=1}] run function mwj:system/ongame/roles/message_error

## Send a Result Message to Medium
execute as @a[team=Player] if score @s NUM = @p[scores={CurrentRole=28,RoleOfNum=1,DONE=0}] RoleTarget run function mwj:system/ongame/medium/medium_result

## Reset Scoreboard
scoreboard players set @s RoleOfNum 0

## Enable Medium Trigger
scoreboard players reset @s TurnPageRight
scoreboard players reset @s TurnPageLeft
scoreboard players reset @s RoleTrigger
scoreboard players enable @s TurnPageRight
scoreboard players enable @s TurnPageLeft
scoreboard players enable @s RoleTrigger

## Death
scoreboard players set @s[scores={DeathCount=1}] DONE 1