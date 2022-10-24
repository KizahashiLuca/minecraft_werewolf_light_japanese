####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos2
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/clever_wolf run scoreboard players remove #MWL NumOfClWolves 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/immoralist run scoreboard players remove #MWL NumOfImmorals 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/seer run scoreboard players remove #MWL NumOfSeers 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/thief run scoreboard players remove #MWL NumOfThieves 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory