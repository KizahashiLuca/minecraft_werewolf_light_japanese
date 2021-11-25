####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Pos1
execute if score #MWL Phase matches 95 if score #MWL NumOfWolves matches 1.. run scoreboard players remove #MWL NumOfWolves 1
execute if score #MWL Phase matches 96 if score #MWL NumOfFoxes matches 1 if score #MWL NumOfImmorals matches 0 run scoreboard players remove #MWL NumOfFoxes 1
execute if score #MWL Phase matches 96 if score #MWL NumOfFoxes matches 1 if score #MWL NumOfImmorals matches 1.. run scoreboard players remove #MWL NumOfFoxes 1
execute if score #MWL Phase matches 96 if score #MWL NumOfFoxes matches 0 if score #MWL NumOfImmorals matches 1.. run scoreboard players set #MWL NumOfImmorals 0
execute if score #MWL Phase matches 96 if score #MWL NumOfFoxes matches 2.. run scoreboard players remove #MWL NumOfFoxes 1
execute if score #MWL Phase matches 97 if score #MWL NumOfMasons matches 1.. run scoreboard players remove #MWL NumOfMasons 2
execute if score #MWL Phase matches 98 if score #MWL NumOfDetectives matches 1.. run scoreboard players remove #MWL NumOfDetectives 1

## Set inventory
function mwj:system/setting/choose_role/common/set_inventory