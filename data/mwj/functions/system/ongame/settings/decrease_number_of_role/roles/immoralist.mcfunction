####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Decrease immoralist
scoreboard players remove #MWL NumOfImmorals 1
scoreboard players remove #MWL PrevAddedRole 1

execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFoxes matches 1 if score #MWL NumOfImmorals matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/immoralist