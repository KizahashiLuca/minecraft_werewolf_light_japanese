###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Send a Message to a StrayBullet Player
tellraw @p[tag=StrayBullet] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s[tag=StrayBullet] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"selector":"@a[scores={CurrentRole=25..27},tag=SeerFox]","color":"white"},{"text":" に","color":"white"}]
tellraw @s[scores={DeathCount=0}] ["",{"text":"  道連れされましたが、突然死しませんでした。","color":"white"}]
tellraw @s[scores={DeathCount=1}] ["",{"text":"  道連れされて、突然死しました。","color":"white"}]
tellraw @p[tag=StrayBullet] ["",{"text":"----------------------------------\n","color":"white"}]

## Kill log
scoreboard players set @p[tag=StrayBullet,scores={DeathCount=1}] KillLogOfCat 1

## Remove Tags
tag @p[tag=StrayBullet] remove StrayBullet