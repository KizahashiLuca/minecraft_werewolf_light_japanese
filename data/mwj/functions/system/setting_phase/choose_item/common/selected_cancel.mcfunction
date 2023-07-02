####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset choice
scoreboard players operation #MWL ChooseStick = #MWL PChooseStick
scoreboard players operation #MWL ChooseTotem = #MWL PChooseTotem
scoreboard players operation #MWL ChooseDeathPot = #MWL PChooseDeathPot
scoreboard players operation #MWL ChoosePearl = #MWL PChoosePearl
scoreboard players operation #MWL ChooseHoe = #MWL PChooseHoe

scoreboard players operation #MWL ChooseElytra = #MWL PChooseElytra
scoreboard players operation #MWL ChooseSnowball = #MWL PChooseSnowbal
scoreboard players operation #MWL ChooseInvisPot = #MWL PChooseInvisPot
scoreboard players operation #MWL ChooseSpeedPot = #MWL PChooseSpeedPot
scoreboard players operation #MWL ChooseJumpPot = #MWL PChooseJumpPot

scoreboard players operation #MWL ChooseTrident = #MWL PChooseTrident
scoreboard players operation #MWL ChooseConduit = #MWL PChooseConduit
scoreboard players operation #MWL ChooseCrossbow = #MWL PChooseCrossbow
scoreboard players operation #MWL ChooseHoneyBlock = #MWL PChooseHoneyBloc
scoreboard players operation #MWL ChooseLantern = #MWL PChooseLantern

scoreboard players operation #MWL ChooseVines = #MWL PChooseVines
scoreboard players operation #MWL ChooseSpyglass = #MWL PChooseSpyglass
# scoreboard players operation #MWL Choose = #MWL PChoose
# scoreboard players operation #MWL Choose = #MWL PChoose
# scoreboard players operation #MWL Choose = #MWL PChoose

## Set item addition
function mwj:system/setting_phase/choose_item/common/send_message