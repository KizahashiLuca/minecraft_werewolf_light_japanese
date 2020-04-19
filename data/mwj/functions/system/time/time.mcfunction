###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Calculate time every tick
scoreboard players remove Time TICK 1
execute if score Time TICK matches ..-1 run scoreboard players set Time TICK 0

## Calculate time every second
execute if score Time TICK matches 0 run function mwj:system/time/second