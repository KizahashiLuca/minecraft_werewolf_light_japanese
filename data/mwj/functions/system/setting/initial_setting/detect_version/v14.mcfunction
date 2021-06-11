####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Minecraft 1.14
loot replace entity @p[tag=Host] inventory.0 loot mwj:setting/detect_version/lantern
execute if entity @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:lantern",Count:1b,tag:{Tags:["Ver"]}}]}] run scoreboard players set #MWL Version 14