###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Number the Members
scoreboard players operation Time ROLE_PAGE_NUM = Time NUM
scoreboard players remove Time ROLE_PAGE_NUM 1
scoreboard players operation Time ROLE_PAGE_NUM /= Time 10