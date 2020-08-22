###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Set Scoreboard
scoreboard objectives add TEMP1 dummy
scoreboard objectives add TEMP2 dummy

## Calculate Time Limit
scoreboard players operation @s TEMP1 = @s Second
scoreboard players operation @s TEMP1 -= #MWL Second

## Set This Player Flag
scoreboard players set @s TEMP2 1

## Send a Common Message
tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"  探偵結果","color":"white"}]

## Send a Message that Victim is Alive
execute as @p[scores={TEMP2=1,DeathCount=0}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Victim Time Out of Range
execute as @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=181..}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Victim is dead
execute as @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=0..180}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は殺害されています。","color":"white"}]

## Send a Message that Killer is Known
execute if entity @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=0..120}] as @a if score @s NumOfPlayers = @p[scores={TEMP2=1}] NumberOfKiller run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@p[scores={TEMP2=1}]","color":"white"},{"text":" の殺害者は ","color":"white"},{"selector":"@s","color":"white","bold":true},{"text":" です。","color":"white"}]

## Send a Message that Killer is Unknown
execute if entity @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=121..180}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@p[scores={TEMP2=1}]","color":"white"},{"text":" の殺害者は不明です。","color":"white"}]

## Send a Message of Victim's role
execute if entity @p[scores={TEMP2=1,DeathCount=1..2,TEMP1=0..60}] as @a if score @s NumOfPlayers = @p[scores={TEMP2=1}] NumberOfKiller run function mwj:system/ongame/detective/result_roles

## Send a Common Message
tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Remove Scoreboard
scoreboard objectives remove TEMP1
scoreboard objectives remove TEMP2

## Detective Role Done
scoreboard players set @p[scores={CurrentRole=31,RoleOfNum=1}] RoleDone 1

## Reset Detective Trigger
scoreboard players reset @p[scores={CurrentRole=31,RoleOfNum=1}] TargetOfRole