###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Winner is Nobody
execute if score #MWL Second matches 0 if score #MWL Tick matches 0 run function mwj:system/finish/winner/draw

execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 0 if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run schedule function mwj:system/finish/winner/draw 5s replace
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 0 if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run scoreboard players set #MWL IsEndGame 1

## Winner is White
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run schedule function mwj:system/finish/winner/villager 5s replace
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run scoreboard players set #MWL IsEndGame 1

## Winner is Black
execute if score #MWL PURPLE matches 0 if score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run schedule function mwj:system/finish/winner/werewolf 5s replace
execute if score #MWL PURPLE matches 0 if score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run scoreboard players set #MWL IsEndGame 1

## Winner is Fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run schedule function mwj:system/finish/winner/fox 5s replace
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 0 unless score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run scoreboard players set #MWL IsEndGame 1

execute if score #MWL PURPLE matches 1.. if score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run schedule function mwj:system/finish/winner/fox 5s replace
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK = #MWL WHITE if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run scoreboard players set #MWL IsEndGame 1