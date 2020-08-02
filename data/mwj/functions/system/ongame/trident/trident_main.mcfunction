###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Trident
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:trident",tag:{Damage:249,Tags:"MWLitem"}}]}] run function mwj:system/ongame/trident/trident_clear
execute as @e[type=minecraft:trident,nbt={Trident:{id:"minecraft:trident",tag:{Tags:"MWLitem"}}},tag=!TridentDone] run function mwj:system/ongame/trident/detect_trident
execute as @a[team=Player,scores={DeathCount=1}] run function mwj:system/ongame/trident/killlog_trident