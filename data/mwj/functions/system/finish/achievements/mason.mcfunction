###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Mason 1
scoreboard objectives add MASON_TEMP dummy
scoreboard players set @a MASON_TEMP 0
scoreboard players set @s MASON_TEMP 1
execute if score @s ROLE matches 7 if score @s DEATH matches 0 as @a[scores={ROLE=7,MASON_TEMP=0}] if score @s MASON_PAIR = @p[scores={MASON_TEMP=1,DEATH=0}] MASON_PAIR if score @s DEATH matches 0 run scoreboard players set @p[scores={MASON_TEMP=1}] MASON_ACHIEVE1 1
scoreboard objectives remove MASON_TEMP