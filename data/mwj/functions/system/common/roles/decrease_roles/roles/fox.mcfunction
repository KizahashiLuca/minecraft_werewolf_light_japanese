####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set tmp scoreboard
scoreboard objectives add TmpNumOfFoxImrls dummy
scoreboard players operation #MWL TmpNumOfFoxImrls = #MWL NumOfFoxes
scoreboard players operation #MWL TmpNumOfFoxImrls += #MWL NumOfImmorals

## Decrease fox and immoralist
execute if score #MWL TmpNumOfRoles >= #MWL TmpNumOfFoxImrls if score #MWL NumOfFoxes matches 1 run function mwj:system/common/roles/decrease_roles/roles/fox/reset
execute if score #MWL TmpNumOfRoles >= #MWL TmpNumOfFoxImrls if score #MWL NumOfFoxes matches 2.. run function mwj:system/common/roles/decrease_roles/roles/fox/remove

## Remove tmp scoreboard
scoreboard objectives remove TmpNumOfFoxImrls
