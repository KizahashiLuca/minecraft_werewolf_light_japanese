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
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/fanatic run scoreboard players remove #MWL NumOfFanatics 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/lycanthrope run scoreboard players remove #MWL NumOfLycants 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/medium run scoreboard players remove #MWL NumOfMediums 1
# execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/ run scoreboard players remove #MWL NumOf 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory