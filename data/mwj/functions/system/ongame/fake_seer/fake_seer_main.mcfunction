###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Set Scoreboard
scoreboard players set @s RoleOfNum 1
scoreboard players set @s RoleTarget 0

## Detect Dropping Redstone Torch
execute as @s[scores={DropTorch=1,DONE=0}] run function mwj:system/ongame/fake_seer/fake_seer_trigger
execute as @s[scores={DropTorch=1,DONE=1}] run function mwj:system/ongame/roles/message_error

## Detect Page Role
execute as @s[scores={TurnPageRight=1,DONE=0}] run function mwj:system/ongame/fake_seer/fake_seer_message
execute as @s[scores={TurnPageLeft=1,DONE=0}] run function mwj:system/ongame/fake_seer/fake_seer_message
execute as @s[scores={TurnPageRight=1,DONE=1}] run function mwj:system/ongame/roles/message_error
execute as @s[scores={TurnPageLeft=1,DONE=1}] run function mwj:system/ongame/roles/message_error

## Send a Result to Fake Seer
execute as @s[scores={RoleTrigger=1..10,DONE=0}] run function mwj:system/ongame/roles/calculation
execute as @s[scores={RoleTrigger=1..10,DONE=1}] run function mwj:system/ongame/roles/message_error

## Send a Result Message to Fake Seer
execute as @a[team=Player] if score @s NUM = @p[scores={CurrentRole=26,RoleOfNum=1,DONE=0}] RoleTarget run function mwj:system/ongame/fake_seer/fake_seer_result

## Reset Scoreboard
scoreboard players set @s RoleOfNum 0

## Enable Fake Seer Trigger
scoreboard players reset @s TurnPageRight
scoreboard players reset @s TurnPageLeft
scoreboard players reset @s RoleTrigger
scoreboard players enable @s TurnPageRight
scoreboard players enable @s TurnPageLeft
scoreboard players enable @s RoleTrigger

## Death
scoreboard players set @s[scores={DeathCount=1}] DONE 1