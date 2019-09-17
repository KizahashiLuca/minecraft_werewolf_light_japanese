###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Calculate Time
scoreboard players add Time TICK 1
scoreboard players operation Time TICK %= Time 20
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players remove Time SECOND 1

## Store for Sidebar
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info = Time SECOND