###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Calculate Time
scoreboard players remove Time TICK 1
execute if score Time TICK matches -1 run scoreboard players remove Time SECOND 1

## Store for Sidebar
execute if score Time TICK matches -1 run scoreboard players operation 残り時間 Info = Time SECOND

## Reset Tick
execute if score Time TICK matches -1 run scoreboard players set Time TICK 19