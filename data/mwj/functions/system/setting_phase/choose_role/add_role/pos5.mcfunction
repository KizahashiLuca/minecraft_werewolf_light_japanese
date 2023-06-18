####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos5
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/fanatic run scoreboard players add #MWL NumOfFanatics 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/lycanthrope run scoreboard players add #MWL NumOfLycants 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/medium run scoreboard players add #MWL NumOfMediums 1
# execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/ run scoreboard players add #MWL NumOf 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory