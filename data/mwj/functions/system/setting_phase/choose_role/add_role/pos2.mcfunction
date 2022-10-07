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
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/clever_wolf run scoreboard players add #MWL NumOfClWolves 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/immoralist run scoreboard players add #MWL NumOfImmorals 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/immoralist/no_fox run scoreboard players add #MWL NumOfFoxes 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/seer run scoreboard players add #MWL NumOfSeers 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/thief run scoreboard players add #MWL NumOfThieves 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory