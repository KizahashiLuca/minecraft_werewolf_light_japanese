###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Message to a StrayBullet Player
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet] ["",{"text":"\n----------------------------------","color":"reset"}]
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet,scores={DEATH=1}] STRAY_BY_CAT run tellraw @p[tag=StrayBullet,scores={DEATH=1}] ["",{"selector":"@p[tag=StrayBullet,scores={DEATH=1}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされて突然死しました。"}]
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet,scores={DEATH=0}] STRAY_BY_CAT run tellraw @p[tag=StrayBullet,scores={DEATH=0}] ["",{"selector":"@p[tag=StrayBullet,scores={DEATH=0}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされましたが突然死しませんでした。"}]
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tellraw @p[tag=StrayBullet] ["",{"text":"----------------------------------\n","color":"reset"}]

## Remove Tags
execute if score @s[scores={DEATH=2}] NUM = @p[tag=StrayBullet] STRAY_BY_CAT run tag @p[tag=StrayBullet] remove StrayBullet

## Select Random StrayBullet
execute if score @s DEATH matches 1 run function mwj:system/ongame/cat/cat_random_tag