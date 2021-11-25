####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos5
execute if score #MWL Phase matches 95 if score #MWL NumOfFanatics matches 1.. run scoreboard players remove #MWL NumOfFanatics 1
execute if score #MWL Phase matches 96 if score #MWL NumOfLycants matches 1.. run scoreboard players remove #MWL NumOfLycants 1
execute if score #MWL Phase matches 97 if score #MWL NumOfMediums matches 1.. run scoreboard players remove #MWL NumOfMediums 1
#execute if score #MWL Phase matches 98 if score #MWL NumOf matches 1.. run scoreboard players remove #MWL NumOf 1

## Set inventory
function mwj:system/setting/choose_role/common/set_inventory