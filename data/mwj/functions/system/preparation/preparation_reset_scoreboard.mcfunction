###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Add Variables for Timer
scoreboard players set Time SECOND 60
scoreboard players set Time TICK 0
## Add Variables for Role
#### Seer/Medium/Detective
scoreboard objectives add doNotDrop dummy
scoreboard objectives add TORCH minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add DONE dummy
scoreboard objectives add 10 dummy
scoreboard objectives add PAGE_NUMER dummy
scoreboard objectives add PAGE_DENOM dummy
scoreboard objectives add ROLE_PAGE dummy
scoreboard objectives add ROLE_PAGE_NUM dummy
scoreboard objectives add ROLE_TARGET dummy
scoreboard objectives add ROLE_R_PAGE trigger
scoreboard objectives add ROLE_L_PAGE trigger
scoreboard objectives add ROLE_BUTTON trigger
#### Fox
scoreboard objectives add STRAY_BY_FOX dummy
scoreboard objectives add SPAWN_TIME_SEC dummy
scoreboard objectives add SPAWN_TIME_TICK dummy
scoreboard objectives add RESPAWN minecraft.custom:minecraft.time_since_death
#### Cat
scoreboard objectives add STRAY_BY_CAT dummy

## Set Variables for Role
#### Set Variables for Redstone Torch
scoreboard players set @a TORCH 0
scoreboard players set @a DONE 0
#### Seer/Medium/Detective
scoreboard players set Time 10 10
scoreboard players set @a PAGE_NUMER 0
scoreboard players set @a PAGE_DENOM 0
scoreboard players set @a ROLE_PAGE 0
scoreboard players set @a ROLE_TARGET 0
scoreboard players reset @a ROLE_R_PAGE
scoreboard players reset @a ROLE_L_PAGE
scoreboard players reset @a ROLE_BUTTON
scoreboard players enable @a ROLE_R_PAGE
scoreboard players enable @a ROLE_L_PAGE
scoreboard players enable @a ROLE_BUTTON
scoreboard players set Time ROLE_PAGE_NUM 0
function mwj:system/preparation/preparation_role_setting
#### Fox
scoreboard players set @a[scores={ROLE=3}] SPAWN_TIME_SEC 0
scoreboard players set @a[scores={ROLE=3}] SPAWN_TIME_TICK 0
scoreboard players set @a[scores={ROLE=3}] STRAY_BY_FOX 0
#### Cat
scoreboard players set @a STRAY_BY_CAT 0

## Set the Time Limit
scoreboard players operation Time SECOND *= Time ChangeLimitTime
scoreboard players operation 残り時間 Info = Time SECOND
## Set Variables for Game
execute as @a[scores={ROLE=1}] run scoreboard players add Time BLACK 1
execute as @a[scores={ROLE=3}] run scoreboard players add Time PURPLE 1
execute as @a[scores={ROLE=4..9}] run scoreboard players add Time WHITE 1
## Set Sidebar Variables for Info
scoreboard objectives setdisplay sidebar Info

## Game Start
scoreboard players set Time GAME 11