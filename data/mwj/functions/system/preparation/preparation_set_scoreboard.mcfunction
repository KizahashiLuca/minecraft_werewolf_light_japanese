###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Add Variables for Game
scoreboard objectives add ROLE dummy
scoreboard objectives add PREV_ROLE dummy
scoreboard objectives add WINNER dummy
scoreboard objectives add WHITE dummy
scoreboard objectives add BLACK dummy
scoreboard objectives add PURPLE dummy
## Add Variables for Role
scoreboard objectives add ROLE_OF_NUM dummy
## Add Variables for Kill Log
scoreboard objectives add DEATH deathCount
scoreboard objectives add KILLER dummy
scoreboard objectives add VICTIM dummy
scoreboard objectives add KILLER_NUM dummy
scoreboard objectives add VICTIM_NUM dummy
scoreboard objectives add VICTIM_FLAG dummy
scoreboard objectives add KILLER_FLAG dummy
scoreboard objectives add KILLLOG_NUM dummy
scoreboard objectives add KILLLOG_FOX dummy
scoreboard objectives add KILLLOG_CAT dummy
## Add Variables for Mason Number
scoreboard objectives add MASON_PAIR dummy
scoreboard objectives add MASON_PAIR_NUM dummy
## Add Variables for Item
scoreboard objectives add TENS_DIGIT dummy
scoreboard objectives add ONES_DIGIT dummy
scoreboard objectives add TEMP_DIGIT dummy

## Set Variables for Game
scoreboard players set @a ROLE 0
scoreboard players set @a[team=Player] NUM 1
scoreboard players set #MWL ROLE 1
scoreboard players set #MWL NUM 0
scoreboard players set #MWL WINNER 0
scoreboard players set #MWL WHITE 0
scoreboard players set #MWL BLACK 0
scoreboard players set #MWL PURPLE 0
## Set Variables for Timer of Kill Log
scoreboard players set @a Second 0
scoreboard players set @a Tick 0
## Set Variables for Seer/Medium/Detective/Cat
scoreboard players set @a ROLE_OF_NUM 0
scoreboard players set #MWL ROLE_OF_NUM 0 
## Set Variables for Kill Log
scoreboard players set @a DEATH 0
scoreboard players set @a KILLER 0
scoreboard players set @a VICTIM 0
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0
scoreboard players set @a KILLLOG_FOX 0
scoreboard players set @a KILLLOG_CAT 0
scoreboard players set #MWL KILLER_NUM 0
scoreboard players set #MWL VICTIM_NUM 0
scoreboard players set #MWL KILLLOG_NUM 1
## Set Variables for Mason Number
scoreboard players set @a MASON_PAIR 0
scoreboard players set #MWL MASON_PAIR 1
scoreboard players set #MWL MASON_PAIR_NUM 0

## RE-Count Players
execute as @a[team=Player] run scoreboard players add #MWL NUM 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NUM 15