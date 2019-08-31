###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Scoreboard
scoreboard objectives add FOX_NUM dummy
scoreboard players operation Time FOX_NUM = Time FOX
execute as @a[scores={ROLE=3}] if score @s DEATH matches 1..2 run scoreboard players remove Time FOX_NUM 1

## Winner is Nobody
execute if score Time Limit matches 0 run function mwj:system/finish/win_draw
execute if score Time FOX_NUM matches 0 if score Time BLACK matches 0 if score Time WHITE matches 0..1 run function mwj:system/finish/win_draw

## Winner is White
execute if score Time FOX_NUM matches 0 if score Time BLACK matches 0 unless score Time WHITE matches 0..1 run function mwj:system/finish/win_white

## Winner is Black
execute if score Time FOX_NUM matches 0 unless score Time BLACK matches 0 if score Time WHITE matches 0..1 run function mwj:system/finish/win_black

## Winner is Fox
execute if score Time FOX_NUM matches 1.. if score Time BLACK matches 0 if score Time WHITE matches 0..1 run function mwj:system/finish/win_draw
execute if score Time FOX_NUM matches 1.. if score Time BLACK matches 0 unless score Time WHITE matches 0..1 run function mwj:system/finish/win_fox
execute if score Time FOX_NUM matches 1.. unless score Time BLACK matches 0 if score Time WHITE matches 0..1 run function mwj:system/finish/win_fox

## Remove Scoreboard
scoreboard objectives remove FOX_NUM