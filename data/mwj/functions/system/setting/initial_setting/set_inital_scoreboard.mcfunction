###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Variables for Game
scoreboard objectives add GAME dummy
scoreboard objectives add NUM dummy
scoreboard objectives add ROLE dummy
scoreboard objectives add WHITE dummy
scoreboard objectives add BLACK dummy
## Variables for Timer
scoreboard objectives add TIME dummy
scoreboard objectives add Limit dummy
scoreboard objectives add 20 dummy
## Variables for Seer/Medium/Detective/Cat
scoreboard objectives add DONE dummy
scoreboard objectives add ROLE_OF_NUM dummy
scoreboard objectives add STRAY_BY_CAT dummy
## Variables for Redstone Torch
scoreboard objectives add doNotDrop dummy
scoreboard objectives add TORCH minecraft.dropped:minecraft.redstone_torch
## Variables for Kill Log
scoreboard objectives add DEATH deathCount
scoreboard objectives add KILLER dummy
scoreboard objectives add VICTIM dummy
scoreboard objectives add KILLER_NUM dummy
scoreboard objectives add VICTIM_NUM dummy
scoreboard objectives add VICTIM_LOG_TEMP dummy
scoreboard objectives add KILLER_LOG_TEMP dummy

## Set Variables for Game
scoreboard players set @a GAME 0
scoreboard players set @a NUM 1
scoreboard players set @a ROLE 0
scoreboard players set Time GAME 0
scoreboard players set Time NUM 0
scoreboard players set Time ROLE 1
scoreboard players set Time WHITE 0
scoreboard players set Time BLACK 0
## Set Variables for Timer
scoreboard players set @a TIME 0
scoreboard players set Time TIME 0
scoreboard players set Time Limit 16
scoreboard players set Time 20 20
## Variables for Seer/Medium/Detective/Cat
scoreboard players set @a DONE 0
scoreboard players set @a ROLE_OF_NUM 0
scoreboard players set @a STRAY_BY_CAT 0
scoreboard players set Time ROLE_OF_NUM 0
## Set Variables for Redstone Torch
scoreboard players set @a TORCH 0
## Set Variables for Kill Log
scoreboard players set @a DEATH 0
scoreboard players set @a KILLER 0
scoreboard players set @a VICTIM 0
scoreboard players set @a KILLER_NUM 0
scoreboard players set @a VICTIM_NUM 0
scoreboard players set @a VICTIM_LOG_TEMP 0
scoreboard players set @a KILLER_LOG_TEMP 0
scoreboard players set Time KILLER 1
scoreboard players set Time VICTIM 1
