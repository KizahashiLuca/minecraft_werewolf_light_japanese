###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Set Scoreboard
scoreboard players set @s RoleOfNum 1
scoreboard players set @s RoleTarget 0

## Detect Dropping Redstone Torch
execute as @s[scores={DropTorch=1,DONE=0}] run function mwj:system/ongame/detective/detective_trigger
execute as @s[scores={DropTorch=1,DONE=1}] run function mwj:system/ongame/message_error

## Detect Page Role
execute as @s[scores={TurnPageRight=1,DONE=0}] run function mwj:system/ongame/detective/detective_message
execute as @s[scores={TurnPageLeft=1,DONE=0}] run function mwj:system/ongame/detective/detective_message
execute as @s[scores={TurnPageRight=1,DONE=1}] run function mwj:system/ongame/message_error
execute as @s[scores={TurnPageLeft=1,DONE=1}] run function mwj:system/ongame/message_error

## Send a Result to Detective
execute as @s[scores={RoleTrigger=1..10,DONE=0}] run function mwj:system/ongame/detective/detective_calculation
execute as @s[scores={RoleTrigger=1..10,DONE=1}] run function mwj:system/ongame/message_error

## Send a Result Message to Detective
execute as @a[team=Player] if score @s NUM = @p[scores={CurrentRole=8,RoleOfNum=1,DONE=0}] RoleTarget run function mwj:system/ongame/detective/detective_result

## Reset Scoreboard
scoreboard players set @s RoleOfNum 0

## Enable Detective Trigger
scoreboard players reset @s TurnPageRight
scoreboard players reset @s TurnPageLeft
scoreboard players reset @s RoleTrigger
scoreboard players enable @s TurnPageRight
scoreboard players enable @s TurnPageLeft
scoreboard players enable @s RoleTrigger

## Death
scoreboard players set @s[scores={DeathCount=1}] DONE 1