###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Process
execute if entity @p[scores={KILLER_FLAG=1}] run scoreboard players set @s KILLER_FLAG 2
execute unless entity @p[scores={KILLER_FLAG=1}] run scoreboard players set @s KILLER_FLAG 3

execute if entity @p[scores={KILLER_FLAG=1}] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=1}] NUM
execute unless entity @p[scores={KILLER_FLAG=1}] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=2}] NUM