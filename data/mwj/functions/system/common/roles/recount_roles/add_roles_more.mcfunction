####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## If more
scoreboard players operation #MWL TmpNumOfRoles = #MWL NumOfRoles
scoreboard players operation #MWL TmpNumOfRoles -= #MWL PrevNumOfRoles
scoreboard players operation #MWL NumOfRestRoles += #MWL TmpNumOfRoles