####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos3
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/white_wolf run scoreboard players remove #MWL NumOfWhWolves 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/villager run scoreboard players remove #MWL NumOfVillagers 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/fake_seer run scoreboard players remove #MWL NumOfFkSeers 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/little_red run scoreboard players remove #MWL NumOfLtReds 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory