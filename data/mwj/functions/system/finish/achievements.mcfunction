###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Root
advancement grant @s only mwj:achievements/root

## Wolf
function mwj:system/finish/achievements/wolf
execute if score @s WOLF_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/wolf/wolf1

## Madman
function mwj:system/finish/achievements/madman
execute if score @s MADMAN_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/madman/madman1

## Fox
function mwj:system/finish/achievements/fox
execute if score @s FOX_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/fox/fox1

## Villager
function mwj:system/finish/achievements/villager
execute if score @s VILLA_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/villager/villager1

## Seer
function mwj:system/finish/achievements/seer
execute if score @s SEER_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/seer/seer1
execute if score @s SEER_ACHIEVE2 matches 1 run advancement grant @s only mwj:achievements/seer/seer2

## Medium
function mwj:system/finish/achievements/medium
execute if score @s MEDIUM_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/medium/medium1

## Mason
function mwj:system/finish/achievements/mason
execute if score @s MASON_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/mason/mason1

## Detective
function mwj:system/finish/achievements/detective
execute if score @s DETEC_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/detective/detective1

## Thief
function mwj:system/finish/achievements/thief
execute if score @s THIEF_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/thief/thief1

## Cat
function mwj:system/finish/achievements/cat
execute if score @s CAT_ACHIEVE1 matches 1 run advancement grant @s only mwj:achievements/cat/cat1