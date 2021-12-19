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
execute if predicate mwj:phase/choose_role/page1 if score #MWL NumOfMadmans matches 1.. run scoreboard players remove #MWL NumOfMadmans 1
execute if predicate mwj:phase/choose_role/page2 if score #MWL NumOfBakeries matches 1.. run scoreboard players remove #MWL NumOfBakeries 1
execute if predicate mwj:phase/choose_role/page3 if score #MWL NumOfSages matches 1.. run scoreboard players remove #MWL NumOfSages 1
execute if predicate mwj:phase/choose_role/page4 if score #MWL NumOfCats matches 1.. run scoreboard players remove #MWL NumOfCats 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory