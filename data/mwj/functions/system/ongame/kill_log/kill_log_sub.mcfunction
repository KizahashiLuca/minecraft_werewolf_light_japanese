###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Process
execute if entity @p[scores={KILLER_FLAG=1}] run scoreboard players set @s KILLER_FLAG 2
execute unless entity @p[scores={KILLER_FLAG=1}] run scoreboard players set @s KILLER_FLAG 3

execute if entity @p[scores={KILLER_FLAG=1}] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=1}] NUM
execute unless entity @p[scores={KILLER_FLAG=1}] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=2}] NUM