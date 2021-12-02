####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add scoreboard
scoreboard objectives add DataVersion dummy
scoreboard objectives add Version dummy

## Set scoreboard - Minecraft 1.13
scoreboard players set #MWL DataVersion 1444
scoreboard players set #MWL Version 13
execute if predicate mwj:version/1.13 run scoreboard players set #MWL Version 13
execute if predicate mwj:version/1.14 run scoreboard players set #MWL Version 14
execute if predicate mwj:version/1.15 run scoreboard players set #MWL Version 15
execute if predicate mwj:version/1.16 run scoreboard players set #MWL Version 16
execute if predicate mwj:version/1.17 run scoreboard players set #MWL Version 17
execute if predicate mwj:version/1.18 run scoreboard players set #MWL Version 18