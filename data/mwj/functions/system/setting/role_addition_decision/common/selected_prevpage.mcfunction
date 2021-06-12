####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Prev Page
scoreboard players remove #MWL Phase 1
execute if score #MWL Phase matches 89 run scoreboard players set #MWL Phase 93

execute if score #MWL Phase matches 90 run function mwj:system/setting/role_addition_decision/page_1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/role_addition_decision/page_2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/role_addition_decision/page_3/set_added
execute if score #MWL Phase matches 93 run function mwj:system/setting/role_addition_decision/page_4/set_added
function mwj:system/setting/role_addition_decision/common/set_inventory