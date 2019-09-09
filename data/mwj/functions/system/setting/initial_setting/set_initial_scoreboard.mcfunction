###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Variables for Game
scoreboard objectives add GAME dummy
scoreboard objectives add ROLE dummy
scoreboard objectives add WHITE dummy
scoreboard objectives add BLACK dummy
scoreboard objectives add PURPLE dummy
## Variables for Timer
scoreboard objectives add SECOND dummy
scoreboard objectives add TICK dummy
scoreboard objectives add 20 dummy
## Variables for Info
scoreboard objectives add Info_wolf dummy {"text":"情報","bold":true}
scoreboard objectives add Info_madman dummy {"text":"情報","bold":true}
scoreboard objectives add Info_fox dummy {"text":"情報","bold":true}
scoreboard objectives add Info_villager dummy {"text":"情報","bold":true}
scoreboard objectives add Info_seer dummy {"text":"情報","bold":true}
scoreboard objectives add Info_medium dummy {"text":"情報","bold":true}
scoreboard objectives add Info_mason dummy {"text":"情報","bold":true}
scoreboard objectives add Info_detective dummy {"text":"情報","bold":true}
scoreboard objectives add Info_cat dummy {"text":"情報","bold":true}
## Variables for Seer/Medium/Detective/Cat
scoreboard objectives add DONE dummy
scoreboard objectives add ROLE_OF_NUM dummy
scoreboard objectives add STRAY_BY_CAT dummy
## Variables for Fox
scoreboard objectives add RESPAWN minecraft.custom:minecraft.time_since_death
scoreboard objectives add SPAWN_TIME_SEC dummy
scoreboard objectives add SPAWN_TIME_TICK dummy
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
scoreboard objectives add KILLLOG_CAT dummy
scoreboard objectives add KILLLOG_FOX dummy

## Set Variables for Game
scoreboard players set @a GAME 0
scoreboard players set @a NUM 1
scoreboard players set @a ROLE 0
scoreboard players set Time GAME 0
scoreboard players set Time NUM 0
scoreboard players set Time ROLE 1
scoreboard players set Time WHITE 0
scoreboard players set Time BLACK 0
scoreboard players set Time PURPLE 0
## Set Variables for Timer
scoreboard players set @a SECOND 0
scoreboard players set @a TICK 0
scoreboard players set Time TICK 0
scoreboard players set Time SECOND 16
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
