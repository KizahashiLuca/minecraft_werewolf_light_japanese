####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Prev Page
scoreboard players remove #MWL Phase 1
execute if score #MWL Version matches ..14 if score #MWL Phase matches 94 run scoreboard players set #MWL Phase 97
execute if score #MWL Version matches 15.. if score #MWL Phase matches 94 run scoreboard players set #MWL Phase 98

execute if score #MWL Phase matches 95 run function mwj:system/setting/casting_decision/page_1/set_added
execute if score #MWL Phase matches 96 run function mwj:system/setting/casting_decision/page_2/set_added
execute if score #MWL Phase matches 97 run function mwj:system/setting/casting_decision/page_3/set_added
execute if score #MWL Phase matches 98 run function mwj:system/setting/casting_decision/page_4/set_added
function mwj:system/setting/casting_decision/common/set_inventory