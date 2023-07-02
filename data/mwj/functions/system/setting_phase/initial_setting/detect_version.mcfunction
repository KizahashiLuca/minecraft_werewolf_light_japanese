####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set scoreboard - Minecraft 1.13-1.20
execute store result score #MWL DataVersion run data get entity @p DataVersion 1.0
execute if predicate mwj:version/1.13 run scoreboard players set #MWL Version 13
execute if predicate mwj:version/1.14 run scoreboard players set #MWL Version 14
execute if predicate mwj:version/1.15 run scoreboard players set #MWL Version 15
execute if predicate mwj:version/1.16 run scoreboard players set #MWL Version 16
execute if predicate mwj:version/1.17 run scoreboard players set #MWL Version 17
execute if predicate mwj:version/1.18 run scoreboard players set #MWL Version 18
execute if predicate mwj:version/1.19 run scoreboard players set #MWL Version 19
execute if predicate mwj:version/1.20 run scoreboard players set #MWL Version 20