###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Initial Number of Role to Zero
execute if score Time WOLF > Time ROLE_OF_NUM as @r[team=Player] run scoreboard players set @r[scores={ROLE=0},team=Player] ROLE 1

## Increment Number of People that is Decided Wolf by One
execute if score Time WOLF > Time ROLE_OF_NUM run scoreboard players add Time ROLE_OF_NUM 1