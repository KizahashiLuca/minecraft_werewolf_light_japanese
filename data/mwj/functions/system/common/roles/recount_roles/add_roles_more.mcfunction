####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## If more
scoreboard players operation #MWL TmpNumOfRoles = #MWL NumOfRoles
scoreboard players operation #MWL TmpNumOfRoles -= #MWL PrevNumOfRoles
scoreboard players operation #MWL NumOfRestRoles += #MWL TmpNumOfRoles