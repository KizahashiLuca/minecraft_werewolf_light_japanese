###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Send a Message to a StrayBullet Player
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet] ["",{"text":"\n----------------------------------","color":"white"}]
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet,scores={DEATH=0}] ["",{"selector":"@p[tag=StrayBullet,scores={DEATH=0}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされましたが、突然死しませんでした。"}]
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet,scores={DEATH=1}] ["",{"selector":"@p[tag=StrayBullet,scores={DEATH=1}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされて、突然死しました。"}]
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet,scores={DEATH=1,ROLE=1..2}] STRAY_BY_CAT run scoreboard players set @s CAT_ACHIEVE1 1
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet] ["",{"text":"----------------------------------\n","color":"white"}]

## Kill log
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run scoreboard players set @p[tag=StrayBullet,scores={DEATH=1}] KILLLOG_CAT 1

## Remove Tags
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tag @p[tag=StrayBullet] remove StrayBullet

## Select Random StrayBullet
execute as @s[scores={DEATH=1}] run function mwj:system/ongame/cat/cat_random_tag