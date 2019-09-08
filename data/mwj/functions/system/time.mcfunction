###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Calculate Time
scoreboard players add Time TICK 1
scoreboard players operation Time TICK %= Time 20
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players remove Time SECOND 1

## Store for Sidebar
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_wolf = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_madman = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_fox = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_villager = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_seer = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_medium = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_mason = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_detective = Time SECOND
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run scoreboard players operation 残り時間 Info_cat = Time SECOND
