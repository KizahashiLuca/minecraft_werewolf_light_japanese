####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Wolf Killed
scoreboard players set @s[scores={RoleOfNum=1}] DeathCount 1

## Tell Fox by Seer
tag @s add DetectDeath
execute as @a[scores={CurrentRole=25..27}] if score @s NumOfPlayers = @p[tag=SeeredFox,tag=DetectDeath] KilledBySeer run tag @s add SeerFox
tellraw @s[scores={DeathCount=0..1}] [""]
tellraw @s[scores={DeathCount=0..1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @s[scores={DeathCount=0..1}] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"selector":"@a[scores={CurrentRole=25..27},tag=SeerFox]","color":"white"},{"text":" に","color":"white"}]
tellraw @s[scores={DeathCount=0}] ["",{"text":"  占われましたが、突然死しませんでした。","color":"white"}]
tellraw @s[scores={DeathCount=1}] ["",{"text":"  占われて、突然死しました。","color":"white"}]
tellraw @s[scores={DeathCount=0..1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @s[scores={DeathCount=0..1}] [""]
tag @a remove SeerFox
tag @a remove DetectDeath

## Kill log
scoreboard players set @s[scores={DeathCount=1}] KillLogOfFox 1

## Detect Death
execute as @s[scores={DeathCount=1,RoleOfNum=1}] run scoreboard players remove #MWL PURPLE 1
scoreboard players set @s[scores={RoleOfNum=1}] RoleOfNum 2

## Remove Tag
tag @s remove SeeredFox