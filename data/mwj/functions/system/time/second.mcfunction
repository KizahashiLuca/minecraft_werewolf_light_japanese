###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Calculate time
scoreboard players remove Time SECOND 1
execute if score Time SECOND matches ..-1 run scoreboard players set Time SECOND 0

## Store time for bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get Time SECOND
execute if score Time GAME matches 90..100 run bossbar set minecraft:bossbar name [{"text":"初期設定時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]
execute if score Time GAME matches 10 run bossbar set minecraft:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]
execute if score Time GAME matches 11 run bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]

## Process the sound system
execute if score Time SECOND matches 4..10 as @a run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score Time SECOND matches 1..3 as @a run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score Time SECOND matches 0 as @a run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Reset tick
execute unless score Time SECOND matches 0 run scoreboard players set Time TICK 19