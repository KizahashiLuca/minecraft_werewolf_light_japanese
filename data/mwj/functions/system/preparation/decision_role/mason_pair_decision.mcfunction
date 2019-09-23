###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Decide Mason Pair
execute if score Time MASON_PAIR <= Time MASON_PAIR_NUM run scoreboard players operation @r[scores={ROLE=7,MASON_PAIR=0},limit=2] MASON_PAIR = Time MASON_PAIR
execute if score Time MASON_PAIR <= Time MASON_PAIR_NUM if entity @p[scores={ROLE=7,MASON_PAIR=0}] run scoreboard players add Time MASON_PAIR 1
