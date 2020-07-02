###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Number the Members
scoreboard players operation #MWL ROLE_PAGE_NUM = #MWL NUM
scoreboard players remove #MWL ROLE_PAGE_NUM 1
scoreboard players operation #MWL ROLE_PAGE_NUM /= #MWL 10