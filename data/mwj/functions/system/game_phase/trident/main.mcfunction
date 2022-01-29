####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Trident
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:trident",tag:{Damage:249,Tags:["MWLitem"]}}]}] at @s run function mwj:system/game_phase/trident/clear_trident
execute as @e[type=minecraft:trident,nbt={Trident:{id:"minecraft:trident",tag:{Tags:["MWLitem"]}}},tag=!TridentDone] at @s run function mwj:system/game_phase/trident/detect_trident
execute as @a[team=Player,scores={DeathCount=1}] at @s run function mwj:system/game_phase/trident/kill_log_trident