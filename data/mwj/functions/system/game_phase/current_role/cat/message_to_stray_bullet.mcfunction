####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Message to a StrayBullet Player
tellraw @s[tag=StrayBullet] [""]
tellraw @s[tag=StrayBullet] ["",{"text":"----------------------------------","color":"white"}]
tellraw @s[tag=StrayBullet] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"selector":"@a[scores={CurrentRole=25..27},tag=SeerFox]","color":"white"},{"text":" に","color":"white"}]
tellraw @s[scores={DeathCount=0}] ["",{"text":"  道連れされましたが、突然死しませんでした。","color":"white"}]
tellraw @s[scores={DeathCount=1}] ["",{"text":"  道連れされて、突然死しました。","color":"white"}]
tellraw @s[tag=StrayBullet] ["",{"text":"----------------------------------","color":"white"}]
tellraw @s[tag=StrayBullet] [""]

## Kill log
scoreboard players set @p[tag=StrayBullet,scores={DeathCount=1}] KillLogOfCat 1

## Remove Tags
tag @p[tag=StrayBullet] remove StrayBullet