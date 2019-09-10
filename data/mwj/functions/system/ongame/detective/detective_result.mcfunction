###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Scoreboard
scoreboard objectives add TEMP1 dummy
scoreboard objectives add TEMP2 dummy

## Calculate Time Limit
scoreboard players operation @s TEMP1 = @s TIME
scoreboard players operation @s TEMP1 -= Time SECOND

## Set This Player Flag
scoreboard players set @s TEMP2 1

## Send a Common Message
tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"  探偵結果","color":"white"}]

## Send a Message that Victim is Alive
execute if score @s DEATH matches 0 run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Victim Time Out of Range
execute if score @s DEATH matches 1..2 unless score @s TEMP1 matches 0..60 run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は行方不明です。","color":"white"}]

## Send a Message that Killer is Known
execute if score @p[scores={TEMP2=1}] DEATH matches 1..2 if score @p[scores={TEMP2=1}] TEMP1 matches 0..60 as @a if score @s NUM = @p[scores={TEMP2=1}] KILLER_NUM run tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"    ","color":"white"},{"selector":"@p[scores={TEMP2=1}]","color":"white"},{"text":" は ","color":"white"},{"selector":"@s","color":"white","bold":true},{"text":" に殺されたことが分かりました。","color":"white"}]

## Send a Common Message
tellraw @p[scores={ROLE=8,ROLE_OF_NUM=1}] ["",{"text":"----------------------------------\n","color":"white"}]

## Remove Scoreboard
scoreboard objectives remove TEMP1
scoreboard objectives remove TEMP2

## Detective Role Done
scoreboard players set @p[scores={ROLE=8,ROLE_OF_NUM=1}] DONE 1

## Reset Detective Trigger
scoreboard players white @p[scores={ROLE=8,ROLE_OF_NUM=1}] DETECTIVE_OBJ
