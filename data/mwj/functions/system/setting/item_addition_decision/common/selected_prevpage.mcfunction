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
execute if score #MWL Version matches ..15 if score #MWL Phase matches 84 run scoreboard players set #MWL Phase 87
execute if score #MWL Version matches 16.. if score #MWL Phase matches 84 run scoreboard players set #MWL Phase 88

execute if score #MWL Phase matches 85 run function mwj:system/setting/item_addition_decision/page_1/set_added
execute if score #MWL Phase matches 86 run function mwj:system/setting/item_addition_decision/page_2/set_added
execute if score #MWL Phase matches 87 run function mwj:system/setting/item_addition_decision/page_3/set_added
execute if score #MWL Phase matches 88 run function mwj:system/setting/item_addition_decision/page_4/set_added
function mwj:system/setting/item_addition_decision/common/set_inventory