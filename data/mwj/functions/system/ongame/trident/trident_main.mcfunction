###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Trident
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:trident",tag:{Damage:249}}]}] run function mwj:system/ongame/trident/clear_trident
execute as @e[type=minecraft:trident,tag=!TridentDone] run function mwj:system/ongame/trident/detect_trident
execute as @a[team=Player,scores={DeathCount=1}] run function mwj:system/ongame/trident/killlog_trident