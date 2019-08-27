###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Initial Number of Role to Zero
execute as @r run scoreboard players set @r[scores={ROLE=0}] ROLE 2

## Increment Number of People that is Decided Madman by One
scoreboard players add Time ROLE_OF_NUM 1