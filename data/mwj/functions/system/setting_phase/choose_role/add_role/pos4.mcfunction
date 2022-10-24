####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos4
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/madman run scoreboard players add #MWL NumOfMadmans 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/bakery run scoreboard players add #MWL NumOfBakeries 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/sage run scoreboard players add #MWL NumOfSages 1
execute if predicate mwj:system/setting_phase/choose_role/add_role/detect/cat run scoreboard players add #MWL NumOfCats 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory