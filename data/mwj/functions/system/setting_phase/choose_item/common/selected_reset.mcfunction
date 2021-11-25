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
scoreboard players set #MWL ChooseStick 0
scoreboard players set #MWL ChooseTotem 0
scoreboard players set #MWL ChooseDeathPot 0
scoreboard players set #MWL ChoosePearl 0
scoreboard players set #MWL ChooseHoe 0

scoreboard players set #MWL ChooseElytra 0
scoreboard players set #MWL ChooseSnowball 0
scoreboard players set #MWL ChooseInvisPot 0
scoreboard players set #MWL ChooseSpeedPot 0
scoreboard players set #MWL ChooseJumpPot 0

scoreboard players set #MWL ChooseTrident 0
scoreboard players set #MWL ChooseConduit 0
scoreboard players set #MWL ChooseCrossbow 0
scoreboard players set #MWL ChooseHoneyBlock 0
scoreboard players set #MWL ChooseLantern 0

scoreboard players set #MWL ChooseVines 0
scoreboard players set #MWL ChooseSpyglass 0
# scoreboard players set #MWL Choose 0
# scoreboard players set #MWL Choose 0
# scoreboard players set #MWL Choose 0

## Set inventory
function mwj:system/setting_phase/choose_item/common/set_inventory