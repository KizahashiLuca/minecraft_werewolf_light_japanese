####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Scoreboard
scoreboard objectives add TEMP1 dummy
scoreboard objectives add TEMP2 dummy

## Calculate Time Limit
scoreboard players operation @s TEMP1 = @s Second
scoreboard players operation @s TEMP1 -= #MWL Second

## Set This Player Flag
scoreboard players set @s TEMP2 1

## Send a Common Message
tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] [""]
tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"  探偵結果","color":"white"}]

## Send a Message that Victim is Alive
execute as @p[scores={TEMP2=1,DeathCount=0}] run tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Victim Time Out of Range
execute as @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=181..}] run tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Victim is dead
execute as @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=0..180},tag=Cryptobiosis] run tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は仮死状態です。","color":"white"}]

## Send a Message that Victim is dead
execute as @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=0..180},tag=!Cryptobiosis] run tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は殺害されています。","color":"white"}]

## Send a Message that Killer is Known
execute if entity @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=0..120}] as @a if score @s NumOfPlayers = @p[scores={TEMP2=1}] NumberOfKiller run tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@p[scores={TEMP2=1}]","color":"white"},{"text":" の殺害者は ","color":"white"},{"selector":"@s","color":"white","bold":true},{"text":" です。","color":"white"}]

## Send a Message that Killer is Unknown
execute if entity @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=121..180}] run tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@p[scores={TEMP2=1}]","color":"white"},{"text":" の殺害者は不明です。","color":"white"}]

## Send a Message of Victim's role
execute if entity @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=0..60}] as @a if score @s NumOfPlayers = @p[scores={TEMP2=1}] NumberOfKiller run function mwj:system/game_phase/current_role/detective/result_roles

## Send a Common Message
tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=31,TagOfRoleWork=1}] [""]

## Remove Scoreboard
scoreboard objectives remove TEMP1
scoreboard objectives remove TEMP2

## Detective Role Done
scoreboard players set @p[scores={CurrentRole=31,TagOfRoleWork=1}] RoleDone 1

## Reset Detective Trigger
scoreboard players reset @p[scores={CurrentRole=31,TagOfRoleWork=1}] TargetOfRole