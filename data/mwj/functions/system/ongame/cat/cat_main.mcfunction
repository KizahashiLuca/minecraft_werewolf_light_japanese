###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Send a Message to a StrayBullet Player
execute if score @s DEATH matches 2 if score @s NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet] ["",{"text":"\n----------------------------------","color":"white"}]
execute if score @s DEATH matches 2 if score @s NUM = @p[tag=StrayBullet] STRAY_BY_CAT if score @p[tag=StrayBullet] DEATH matches 0 run tellraw @p[tag=StrayBullet] ["",{"selector":"@p[tag=StrayBullet,scores={DEATH=0}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされましたが、突然死しませんでした。"}]
execute if score @s DEATH matches 2 if score @s NUM = @p[tag=StrayBullet] STRAY_BY_CAT if score @p[tag=StrayBullet] DEATH matches 1 run tellraw @p[tag=StrayBullet] ["",{"selector":"@p[tag=StrayBullet,scores={DEATH=1}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされて、突然死しました。"}]
execute if score @s DEATH matches 2 if score @s NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet] ["",{"text":"----------------------------------\n","color":"white"}]

## Kill log
execute if score @s DEATH matches 2 if score @s NUM = @p[tag=StrayBullet] STRAY_BY_CAT if score @p[tag=StrayBullet] DEATH matches 1 run scoreboard players set @p[tag=StrayBullet] KILLLOG_CAT 1

## Remove Tags
execute if score @s DEATH matches 2 if score @s NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tag @p[tag=StrayBullet] remove StrayBullet

## Select Random StrayBullet
execute if score @s DEATH matches 1 run function mwj:system/ongame/cat/cat_random_tag