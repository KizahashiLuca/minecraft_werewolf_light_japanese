###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Send a Message to a StrayBullet Player
tellraw @p[tag=StrayBullet] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[tag=StrayBullet,scores={DeathCount=0}] ["",{"selector":"@p[tag=StrayBullet,scores={DeathCount=0}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされましたが、突然死しませんでした。"}]
tellraw @p[tag=StrayBullet,scores={DeathCount=1}] ["",{"selector":"@p[tag=StrayBullet,scores={DeathCount=1}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされて、突然死しました。"}]
tellraw @p[tag=StrayBullet] ["",{"text":"----------------------------------\n","color":"white"}]

## Kill log
scoreboard players set @p[tag=StrayBullet,scores={DeathCount=1}] KillLogOfCat 1

## Remove Tags
tag @p[tag=StrayBullet] remove StrayBullet