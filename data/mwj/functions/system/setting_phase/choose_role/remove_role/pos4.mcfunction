####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos4
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/madman run scoreboard players remove #MWL NumOfMadmans 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/bakery run scoreboard players remove #MWL NumOfBakeries 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/sage run scoreboard players remove #MWL NumOfSages 1
execute if predicate mwj:system/setting_phase/choose_role/remove_role/detect/cat run scoreboard players remove #MWL NumOfCats 1

## Set inventory
function mwj:system/setting_phase/choose_role/common/set_inventory