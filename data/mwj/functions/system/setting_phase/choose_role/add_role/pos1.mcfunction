####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/wolf run scoreboard players add #MWL NumOfWolves 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/fox run scoreboard players add #MWL NumOfFoxes 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/mason run scoreboard players add #MWL NumOfMasons 2
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/detective run scoreboard players add #MWL NumOfDetectives 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory