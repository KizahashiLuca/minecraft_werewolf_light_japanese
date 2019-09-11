###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################


## Add Variables for Role
#### Seer/Medium/Detective
scoreboard objectives add doNotDrop dummy
scoreboard objectives add TORCH minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add DONE dummy
scoreboard objectives add SEER_OBJ trigger
scoreboard objectives add MEDIUM_OBJ trigger
scoreboard objectives add DETECTIVE_OBJ trigger
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
#### Seer
scoreboard players reset @a[scores={ROLE=5}] SEER_OBJ
scoreboard players enable @a[scores={ROLE=5}] SEER_OBJ
#### Medium
scoreboard players reset @a[scores={ROLE=6}] MEDIUM_OBJ
scoreboard players enable @a[scores={ROLE=6}] MEDIUM_OBJ
#### Detective
scoreboard players reset @a[scores={ROLE=8}] DETECTIVE_OBJ
scoreboard players enable @a[scores={ROLE=8}] DETECTIVE_OBJ
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

## Remove Variables for Role Addition
scoreboard objectives remove AddedRole
## Remove Variables for Time Limit
scoreboard objectives remove ChangeLimitTime
## Remove Variables for ROLE
scoreboard objectives remove DENOMINATOR
## Remove Variables for Item
scoreboard objectives remove TENS_DIGIT
scoreboard objectives remove ONES_DIGIT

## Game Start
scoreboard players set Time GAME 11