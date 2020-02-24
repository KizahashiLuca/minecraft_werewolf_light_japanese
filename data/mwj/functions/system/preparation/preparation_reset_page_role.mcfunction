###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Number the Members
scoreboard players operation Time ROLE_PAGE_NUM = Time NUM
scoreboard players remove Time ROLE_PAGE_NUM 1
scoreboard players operation Time ROLE_PAGE_NUM /= Time 10