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
scoreboard players operation #MWL PChooseStick = #MWL ChooseStick
scoreboard players operation #MWL PChooseTotem = #MWL ChooseTotem
scoreboard players operation #MWL PChooseDeathPot = #MWL ChooseDeathPot
scoreboard players operation #MWL PChoosePearl = #MWL ChoosePearl
scoreboard players operation #MWL PChooseHoe = #MWL ChooseHoe

scoreboard players operation #MWL PChooseElytra = #MWL ChooseElytra
scoreboard players operation #MWL PChooseSnowball = #MWL ChooseSnowbal
scoreboard players operation #MWL PChooseInvisPot = #MWL ChooseInvisPot
scoreboard players operation #MWL PChooseSpeedPot = #MWL ChooseSpeedPot
scoreboard players operation #MWL PChooseJumpPot = #MWL ChooseJumpPot

scoreboard players operation #MWL PChooseTrident = #MWL ChooseTrident
scoreboard players operation #MWL PChooseConduit = #MWL ChooseConduit
scoreboard players operation #MWL PChooseCrossbow = #MWL ChooseCrossbow
scoreboard players operation #MWL PChooseHoneyBloc = #MWL ChooseHoneyBlock
scoreboard players operation #MWL PChooseLantern = #MWL ChooseLantern

scoreboard players operation #MWL PChooseVines = #MWL ChooseVines
scoreboard players operation #MWL PChooseSpyglass = #MWL ChooseSpyglass
# scoreboard players operation #MWL PChoose = #MWL Choose
# scoreboard players operation #MWL PChoose = #MWL Choose
# scoreboard players operation #MWL PChoose = #MWL Choose

## Send message
function mwj:system/setting/choose_item/common/send_message