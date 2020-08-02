###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Add scoreboard
scoreboard objectives add Version dummy

## Set scoreboard - Minecraft 1.14
scoreboard players set #MWL Version 14

## Minecraft 1.14
function mwj:system/setting/initial_setting/detect_version/v14

## Minecraft 1.15
function mwj:system/setting/initial_setting/detect_version/v15

## Minecraft 1.16
function mwj:system/setting/initial_setting/detect_version/v16

## Clear inventory
replaceitem entity @p[tag=Host] inventory.0 minecraft:air