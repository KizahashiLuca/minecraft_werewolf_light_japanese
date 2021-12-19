####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Calculate Scoreboard
scoreboard players operation @s TargetOfRole = @s TurnPageNum
scoreboard players operation @s TargetOfRole *= #MWL Num00010
scoreboard players operation @s TargetOfRole += @s RoleTrigger
