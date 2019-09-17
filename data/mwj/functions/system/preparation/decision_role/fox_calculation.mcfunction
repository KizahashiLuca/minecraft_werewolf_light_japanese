###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Initial Number of Role to Zero
execute if score Time FOX > Time ROLE_OF_NUM as @r run scoreboard players set @r[scores={ROLE=0}] ROLE 3

## Increment Number of People that is Decided Fox by One
execute if score Time FOX > Time ROLE_OF_NUM run scoreboard players add Time ROLE_OF_NUM 1