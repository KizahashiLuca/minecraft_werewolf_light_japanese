####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## If more
scoreboard players operation #MWL TmpNumOfRoles = #MWL NumOfRoles
scoreboard players operation #MWL TmpNumOfRoles -= #MWL PrevNumOfRoles
scoreboard players operation #MWL NumOfRestRoles += #MWL TmpNumOfRoles