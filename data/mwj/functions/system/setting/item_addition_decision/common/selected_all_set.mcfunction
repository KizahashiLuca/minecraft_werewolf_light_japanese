####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset choice
scoreboard players set #MWL AddedStick 1
scoreboard players set #MWL AddedTotem 1
scoreboard players set #MWL AddedDeath 1
scoreboard players set #MWL AddedPearl 1
scoreboard players set #MWL AddedHoe 1

scoreboard players set #MWL AddedElytra 1
scoreboard players set #MWL AddedSnowball 1
scoreboard players set #MWL AddedInvis 1
scoreboard players set #MWL AddedSpeed 1
scoreboard players set #MWL AddedJump 1

scoreboard players set #MWL AddedTrident 1
scoreboard players set #MWL AddedConduit 1
scoreboard players set #MWL AddedCrossbow 1
scoreboard players set #MWL AddedHoneyBlock 1
scoreboard players set #MWL AddedLantern 1

scoreboard players set #MWL AddedVines 1
scoreboard players set #MWL AddedSpyglass 1
# scoreboard players set #MWL Added 1
# scoreboard players set #MWL Added 1
# scoreboard players set #MWL Added 1

## Set Item Addition
execute if score #MWL Phase matches 85 run function mwj:system/setting/item_addition_decision/page_1/set_added
execute if score #MWL Phase matches 86 run function mwj:system/setting/item_addition_decision/page_2/set_added
execute if score #MWL Phase matches 87 run function mwj:system/setting/item_addition_decision/page_3/set_added
execute if score #MWL Phase matches 88 run function mwj:system/setting/item_addition_decision/page_4/set_added
function mwj:system/setting/item_addition_decision/common/set_inventory