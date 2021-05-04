####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

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