###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Detect Wolf Killed
execute if score @s ROLE_OF_NUM matches 1 run scoreboard players set @s DEATH 1

## Tell Fox by Seer
scoreboard objectives add TMP dummy
scoreboard players set @s TMP 1
execute as @a[scores={ROLE=5}] if score @s NUM = @p[tag=SeeredFox,scores={TMP=1}] STRAY_BY_FOX run scoreboard players set @s TMP 1
scoreboard players set @p[tag=SeeredFox,scores={TMP=1}] TMP 0
execute if score @s DEATH matches 0..1 run tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
execute if score @s DEATH matches 0 run tellraw @s ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"selector":"@a[scores={ROLE=5,TMP=1}]","color":"white"},{"text":" に占われましたが、突然死しませんでした。","color":"white"}]
execute if score @s DEATH matches 1 run tellraw @s ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"selector":"@a[scores={ROLE=5,TMP=1}]","color":"white"},{"text":" に占われて、突然死しました。","color":"white"}]
execute if score @s DEATH matches 1 run scoreboard players set @a[scores={ROLE=5,TMP=1}] SEER_ACHIEVE2 1
execute if score @s DEATH matches 0..1 run tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]
scoreboard objectives remove TMP

## Kill log
execute if score @s DEATH matches 1 run scoreboard players set @s KILLLOG_FOX 1

## Detect Death
execute if score @s DEATH matches 1 if score @s ROLE_OF_NUM matches 1 run scoreboard players remove Time PURPLE 1
execute if score @s ROLE_OF_NUM matches 1 run scoreboard players set @s ROLE_OF_NUM 2

## Remove Tag
tag @s remove SeeredFox