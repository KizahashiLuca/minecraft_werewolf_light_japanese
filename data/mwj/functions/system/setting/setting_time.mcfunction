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

## Title Count Down
execute if score Time TICK matches 0 if score Time SECOND matches 0..60 run title @a[tag=host] times 5 10 5
execute if score Time TICK matches 0 if score Time SECOND matches 0..60 run title @a[tag=host] title [{"text":"初期設定時間","color":"green","bold":true}]
execute if score Time TICK matches 0 if score Time SECOND matches 0..60 run title @a[tag=host] subtitle [{"score":{"name":"Time","objective":"SECOND"},"color":"white","bold":true}]