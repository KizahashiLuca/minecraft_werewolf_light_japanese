####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos2
execute if predicate mwj:phase/choose_role/page1 if score #MWL NumOfClWolves matches 1.. run scoreboard players remove #MWL NumOfClWolves 1
execute if predicate mwj:phase/choose_role/page2 if score #MWL NumOfImmorals matches 1.. run scoreboard players remove #MWL NumOfImmorals 1
execute if predicate mwj:phase/choose_role/page3 if score #MWL NumOfSeers matches 1.. run scoreboard players remove #MWL NumOfSeers 1
execute if predicate mwj:phase/choose_role/page4 if score #MWL NumOfThieves matches 1.. run scoreboard players remove #MWL NumOfThieves 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory