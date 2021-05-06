####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset choice
scoreboard players operation #MWL AddedRole = #MWL AddedRoleNumber
scoreboard players set #MWL AddedWolf 0
scoreboard players set #MWL AddedClWolf 0
scoreboard players set #MWL AddedWhWolf 0
scoreboard players set #MWL AddedMadman 0
scoreboard players set #MWL AddedFanatic 0

scoreboard players set #MWL AddedFox 0
scoreboard players set #MWL AddedImmoral 0
scoreboard players set #MWL AddedVilla 0
scoreboard players set #MWL AddedBakery 0
scoreboard players set #MWL AddedMason 0

scoreboard players set #MWL AddedSeer 0
scoreboard players set #MWL AddedFkSeer 0
scoreboard players set #MWL AddedSage 0
scoreboard players set #MWL AddedMedium 0
scoreboard players set #MWL AddedDetec 0

scoreboard players set #MWL AddedThief 0
scoreboard players set #MWL AddedLtRed 0
scoreboard players set #MWL AddedCat 0
# scoreboard players set #MWL Added 0
# scoreboard players set #MWL Added 0

## Set Item Addition
execute if score #MWL Phase matches 90 run function mwj:system/setting/role_addition_decision/page_1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/role_addition_decision/page_2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/role_addition_decision/page_3/set_added
execute if score #MWL Phase matches 93 run function mwj:system/setting/role_addition_decision/page_4/set_added
function mwj:system/setting/role_addition_decision/common/set_inventory