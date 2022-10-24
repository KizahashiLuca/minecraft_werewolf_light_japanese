####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
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
