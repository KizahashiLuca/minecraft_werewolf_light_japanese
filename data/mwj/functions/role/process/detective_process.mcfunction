###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Set Scoreboard
scoreboard objectives add TEMP1 dummy
scoreboard objectives add TEMP2 dummy

## Calculate Time Limit
scoreboard players operation @s TEMP1 = @s Limit
scoreboard players operation @s TEMP1 -= Time Limit
scoreboard players set @s TEMP2 1

## Error Message
execute unless score @p[scores={TEMP2=1}] TEMP1 matches 0..60 run tellraw @p[scores={ROLE=8}] ["",{"selector":"@p[scores={TEMP2=1}]","color":"reset"},{"text":" は行方不明です。","color":"reset"}]

## Compare Victim Num and Killer Num
execute if score @p[scores={TEMP2=1}] TEMP1 matches 0..60 as @a if score @p[scores={TEMP2=1}] VICTIM = @s KILLER run tellraw @p[scores={ROLE=8}] ["",{"selector":"@p[scores={TEMP2=1}]","color":"reset"},{"text":" は ","color":"reset"},{"selector":"@s","color":"reset","bold":true},{"text":" に殺されたことが分かりました。","color":"reset"}]

## Remove Scoreboard
scoreboard objectives remove TEMP1
scoreboard objectives remove TEMP2