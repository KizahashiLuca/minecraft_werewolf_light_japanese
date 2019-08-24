###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## decide host
tag @s add host

## Change gamerules
gamerule showDeathMessages false
gamerule sendCommandFeedback false
gamemode creative @a
clear @a

## Declare valiables
scoreboard objectives add GAME dummy
scoreboard objectives add NUM dummy
scoreboard objectives add TIME dummy
scoreboard objectives add Limit dummy
scoreboard objectives add 20 dummy
scoreboard objectives add ROLE dummy
scoreboard objectives add DONE dummy
scoreboard objectives add WHITE dummy
scoreboard objectives add BLACK dummy
scoreboard objectives add RoleTrigger trigger
scoreboard objectives add TimeTrigger trigger
scoreboard objectives add AddedRole dummy
scoreboard objectives add ChangeLimitTime dummy
scoreboard objectives add doNotDrop dummy
scoreboard objectives add DEATH deathCount
scoreboard objectives add TORCH minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add KILLER dummy
scoreboard objectives add VICTIM dummy
scoreboard objectives add KILLER_NUM dummy
scoreboard objectives add VICTIM_NUM dummy
scoreboard objectives add VICTIM_LOG_TEMP dummy
scoreboard objectives add KILLER_LOG_TEMP dummy

## Set valiables to initial value
scoreboard players set @a GAME 0
scoreboard players set @a NUM 1
scoreboard players set @a TIME 0
scoreboard players set @a ROLE 0
scoreboard players set @a DONE 0
scoreboard players set @a DEATH 0
scoreboard players set @a TORCH 0
scoreboard players set @a KILLER 0
scoreboard players set @a VICTIM 0
scoreboard players set @a KILLER_NUM 0
scoreboard players set @a VICTIM_NUM 0
scoreboard players set @a VICTIM_LOG_TEMP 0
scoreboard players set @a KILLER_LOG_TEMP 0
scoreboard players reset @s RoleTrigger
scoreboard players reset @s TimeTrigger
scoreboard players set Time GAME 0
scoreboard players set Time NUM 0
scoreboard players set Time TIME 0
scoreboard players set Time Limit 16
scoreboard players set Time 20 20
scoreboard players set Time ROLE 1
scoreboard players set Time KILLER 1
scoreboard players set Time VICTIM 1
scoreboard players set Time ChangeLimitTime 5

## Count players
execute as @a run scoreboard players add Time NUM 1

## init team setting
team add Player
team join Player @a
team modify Player nametagVisibility never
team modify Player seeFriendlyInvisibles false
team modify Player prefix "\u00a7r"
team modify Player prefix "\u00a77"
team modify Player suffix "\u00a7r"

## Decide Special Role
scoreboard players enable @s RoleTrigger
scoreboard players enable @s TimeTrigger
execute if score Time NUM matches 3..7 run function mwj:system/prepare/time_limit/trigger
execute if score Time NUM matches 8..14 run function mwj:system/prepare/additional_roles/trigger

## Stop the game
execute unless score Time NUM matches 3..14 run function mwj:system/finish/break_game