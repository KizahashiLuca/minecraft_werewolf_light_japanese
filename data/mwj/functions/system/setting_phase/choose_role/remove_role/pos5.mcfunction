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
execute if predicate mwj:phase/choose_role/page1 if score #MWL NumOfFanatics matches 1.. run scoreboard players remove #MWL NumOfFanatics 1
execute if predicate mwj:phase/choose_role/page2 if score #MWL NumOfLycants matches 1.. run scoreboard players remove #MWL NumOfLycants 1
execute if predicate mwj:phase/choose_role/page3 if score #MWL NumOfMediums matches 1.. run scoreboard players remove #MWL NumOfMediums 1
#execute if predicate mwj:phase/choose_role/page4 if score #MWL NumOf matches 1.. run scoreboard players remove #MWL NumOf 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory