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
execute if score #MWL Phase matches 95 if score #MWL NumOfMadmans matches 1.. run scoreboard players remove #MWL NumOfMadmans 1
execute if score #MWL Phase matches 96 if score #MWL NumOfBakeries matches 1.. run scoreboard players remove #MWL NumOfBakeries 1
execute if score #MWL Phase matches 97 if score #MWL NumOfSages matches 1.. run scoreboard players remove #MWL NumOfSages 1
execute if score #MWL Phase matches 98 if score #MWL NumOfCats matches 1.. run scoreboard players remove #MWL NumOfCats 1

## Set inventory
function mwj:system/setting/choose_role/common/set_inventory