###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set Scoreboard
scoreboard players set @s ROLE_OF_NUM 1
scoreboard players set @s ROLE_TARGET 0

## Detect Dropping Redstone Torch
execute as @s[scores={TORCH=1,DONE=0}] run function mwj:system/ongame/detective/detective_trigger
execute as @s[scores={TORCH=1,DONE=1}] run function mwj:system/ongame/message_error

## Detect Page Role
execute as @s[scores={ROLE_R_PAGE=1,DONE=0}] run function mwj:system/ongame/detective/detective_message
execute as @s[scores={ROLE_L_PAGE=1,DONE=0}] run function mwj:system/ongame/detective/detective_message
execute as @s[scores={ROLE_R_PAGE=1,DONE=1}] run function mwj:system/ongame/message_error
execute as @s[scores={ROLE_L_PAGE=1,DONE=1}] run function mwj:system/ongame/message_error

## Send a Result to Detective
execute as @s[scores={ROLE_BUTTON=1..10,DONE=0}] run function mwj:system/ongame/detective/detective_calculation
execute as @s[scores={ROLE_BUTTON=1..10,DONE=1}] run function mwj:system/ongame/message_error

## Send a Result Message to Detective
execute as @a[team=Player] if score @s NUM = @p[scores={ROLE=8,ROLE_OF_NUM=1,DONE=0}] ROLE_TARGET run function mwj:system/ongame/detective/detective_result

## Reset Scoreboard
scoreboard players set @s ROLE_OF_NUM 0

## Enable Detective Trigger
scoreboard players reset @s ROLE_R_PAGE
scoreboard players reset @s ROLE_L_PAGE
scoreboard players reset @s ROLE_BUTTON
scoreboard players enable @s ROLE_R_PAGE
scoreboard players enable @s ROLE_L_PAGE
scoreboard players enable @s ROLE_BUTTON

## Death
scoreboard players set @s[scores={DEATH=1}] DONE 1