###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Decide Mason Pair
scoreboard players operation @r[scores={MASON_PAIR=0},limit=2] MASON_PAIR = Time MASON_PAIR
execute if entity @p[scores={MASON_PAIR=0}] run scoreboard players add Time MASON_PAIR 1
