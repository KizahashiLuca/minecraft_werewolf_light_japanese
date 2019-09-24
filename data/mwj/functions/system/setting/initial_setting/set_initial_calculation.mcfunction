###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Change Gamerules
scoreboard players operation Time AddedRole = Time NUM
scoreboard players remove Time AddedRole 6
scoreboard players set Time DENOMINATOR 2
scoreboard players operation Time AddedRole /= Time DENOMINATOR
execute if score Time AddedRole matches ..-1 run scoreboard players set Time AddedRole 0
scoreboard players operation Time PrevAddedRole = Time AddedRole
scoreboard players operation Time PrevAddedVilla = Time PrevAddedRole
