####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if score #MWL Phase matches 99 run scoreboard players set #MWL Phase 95

execute if score #MWL Phase matches 95 run function mwj:system/setting/casting_decision/page_1/set_added
execute if score #MWL Phase matches 96 run function mwj:system/setting/casting_decision/page_2/set_added
execute if score #MWL Phase matches 97 run function mwj:system/setting/casting_decision/page_3/set_added
execute if score #MWL Phase matches 98 run function mwj:system/setting/casting_decision/page_4/set_added
function mwj:system/setting/casting_decision/common/set_inventory