####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos4
execute if score #MWL Phase matches 95 if score #MWL NumOfRestRoles matches 1.. run scoreboard players add #MWL NumOfMadmans 1
execute if score #MWL Phase matches 96 if score #MWL NumOfRestRoles matches 1.. run scoreboard players add #MWL NumOfBakeries 1
execute if score #MWL Phase matches 97 if score #MWL NumOfRestRoles matches 1.. run scoreboard players add #MWL NumOfSages 1
execute if score #MWL Phase matches 98 if score #MWL NumOfRestRoles matches 1.. run scoreboard players add #MWL NumOfCats 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory