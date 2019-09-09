###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Tell Fox by Seer
tellraw @p[tag=SeeredFox] ["",{"text":"\n----------------------------------","color":"reset"}]
execute as @a[scores={ROLE=5}] if score @s NUM = @p[tag=SeeredFox] STRAY_BY_FOX if score @p[tag=SeeredFox] DEATH matches 0 run tellraw @p[tag=SeeredFox] ["",{"text":"  ","color":"reset"},{"selector":"@p[tag=SeeredFox]","color":"reset"},{"text":" は ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" に占われましたが、突然死しませんでした。","color":"reset"}]
execute as @a[scores={ROLE=5}] if score @s NUM = @p[tag=SeeredFox] STRAY_BY_FOX if score @p[tag=SeeredFox] DEATH matches 1 run tellraw @p[tag=SeeredFox] ["",{"text":"  ","color":"reset"},{"selector":"@p[tag=SeeredFox]","color":"reset"},{"text":" は ","color":"reset"},{"selector":"@s","color":"reset"},{"text":" に占われて、突然死しました。","color":"reset"}]
tellraw @p[tag=SeeredFox] ["",{"text":"----------------------------------\n","color":"reset"}]

## Kill log
execute if score @p[tag=SeeredFox] DEATH matches 1 run scoreboard players set @p[tag=SeeredFox] KILLLOG_FOX 1

## Remove Tag
tag @p[tag=SeeredFox] remove SeeredFox