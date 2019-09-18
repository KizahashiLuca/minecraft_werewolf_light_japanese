###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Count Mason Pair
execute as @a[scores={ROLE=7}] run scoreboard players add Time MASON_PAIR_NUM 1
scoreboard players set Time DENOMINATOR 2
scoreboard players operation Time MASON_PAIR_NUM /= Time DENOMINATOR