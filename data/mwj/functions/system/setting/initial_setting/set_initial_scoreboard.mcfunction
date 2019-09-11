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
## Variables for Timer
scoreboard objectives add SECOND dummy
scoreboard objectives add TICK dummy
scoreboard objectives add 20 dummy
## Variables for Role Addition
scoreboard objectives add AddedRole dummy

## Set Variables for Game
scoreboard players set @a GAME 0
scoreboard players set @a ROLE 0
scoreboard players set Time GAME 0
scoreboard players set Time ROLE 1
## Set Variables for Timer
scoreboard players set Time TICK 0
scoreboard players set Time SECOND 16
scoreboard players set Time 20 20
## Set Variables for Role Addition
scoreboard players set AddedRole 4
