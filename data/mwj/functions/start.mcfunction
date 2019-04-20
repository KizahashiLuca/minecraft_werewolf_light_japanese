###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 April 2019
## Version: beta-1.2.1
###############################

## decide host
tag @s add host

## Change gamerules
gamerule showDeathMessages false
gamerule sendCommandFeedback false
gamemode creative @a

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
scoreboard objectives add TimeTrigger trigger
scoreboard objectives add ChangeLimitTime dummy
scoreboard objectives add doNotDrop dummy
scoreboard objectives add DEATH deathCount
scoreboard objectives add TORCH minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add SEER_OBJ trigger
scoreboard objectives add MEDIUM_OBJ trigger

## Set valiables to initial value
scoreboard players set Time GAME 0
scoreboard players set Time NUM 0
scoreboard players set Time TIME 0
scoreboard players set Time Limit 16
scoreboard players set Time 20 20
scoreboard players set Time ROLE 1
scoreboard players set Time ChangeLimitTime 5
scoreboard players set @a NUM 1
scoreboard players set @a ROLE 0
scoreboard players set @a DONE 0
scoreboard players set @a DEATH 0
scoreboard players set @a TORCH 0
scoreboard players reset @a SEER_OBJ
scoreboard players reset @a MEDIUM_OBJ
scoreboard players reset @s TimeTrigger

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

## Decide Time Limit
scoreboard players enable @s TimeTrigger
execute if score Time NUM matches 3..14 run function mwj:system/prepare/time_trigger

## Stop the game
execute unless score Time NUM matches 3..14 run function mwj:system/finish/break_game
