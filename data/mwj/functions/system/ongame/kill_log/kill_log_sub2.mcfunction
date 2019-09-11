###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Process
execute if score @s KILLER_FLAG matches 1 run scoreboard players set @s KILLER_FLAG 2
scoreboard players set @p[scores={KILLER_FLAG=1}] KILLER_FLAG 3
execute if entity @p[scores={KILLER_FLAG=3}] unless entity @p[scores={KILLER_FLAG=4}] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=3}] NUM
execute if entity @p[scores={KILLER_FLAG=4}] unless entity @p[scores={KILLER_FLAG=3}] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=4}] NUM
scoreboard players set @p[scores={KILLER_FLAG=3}] KILLER_FLAG 4
scoreboard players set @p[scores={KILLER_FLAG=2}] KILLER_FLAG 1