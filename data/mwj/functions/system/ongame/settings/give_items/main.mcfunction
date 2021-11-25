####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give Common Items
execute as @a[team=Player] run loot replace entity @s hotbar.0 3 loot mwj:item/common

## Set TempVariable (Kind of Items)
scoreboard players set #MWL TempVariable 0
execute if score #MWL ChooseStick matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseTotem matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseDeathPot matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChoosePearl matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseHoe matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseElytra matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseSnowball matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseInvisPot matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseSpeedPot matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseJumpPot matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseTrident matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseConduit matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseCrossbow matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseHoneyBlock matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseLantern matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseVines matches 1 run scoreboard players add #MWL TempVariable 1
execute if score #MWL ChooseSpyglass matches 1 run scoreboard players add #MWL TempVariable 1
## Calculate ones digit
scoreboard players operation #MWL ONES_DIGIT = #MWL NumOfPlayers
scoreboard players remove #MWL ONES_DIGIT 1
scoreboard players operation #MWL ONES_DIGIT %= #MWL TempVariable
## Calculate tens digit
scoreboard players operation #MWL TENS_DIGIT = #MWL NumOfPlayers
scoreboard players remove #MWL TENS_DIGIT 1
scoreboard players operation #MWL TENS_DIGIT /= #MWL TempVariable

## Give Special Items
execute if score #MWL TENS_DIGIT matches 1.. as @a[team=Player] run function mwj:system/ongame/settings/give_items/branch/branch_tens_digit
execute if score #MWL TENS_DIGIT matches 0 run function mwj:system/ongame/settings/give_items/branch/branch_ones_digit

## Remove tag
tag @a remove MWLitem