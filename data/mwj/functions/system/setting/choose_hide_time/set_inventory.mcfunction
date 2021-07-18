####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear Inventory
clear @p[tag=Host]

## Replace Inventory
scoreboard players operation @p[tag=Host] Digit100 = #MWL HideTime
scoreboard players operation @p[tag=Host] Digit100 /= #MWL 100
scoreboard players operation @p[tag=Host] Digit010 = #MWL HideTime
scoreboard players operation @p[tag=Host] Digit010 %= #MWL 100
scoreboard players operation @p[tag=Host] Digit010 /= #MWL 010
scoreboard players operation @p[tag=Host] Digit001 = #MWL HideTime
scoreboard players operation @p[tag=Host] Digit001 %= #MWL 100
scoreboard players operation @p[tag=Host] Digit001 %= #MWL 010
loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/choose_mode/choose_hide_time
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/common/digit_100
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/common/digit_010
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/common/digit_001
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/common/alphabet/s
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/cancel
loot replace entity @p[tag=Host] inventory.22 loot mwj:setting/common/reset
execute if score #MWL HideTime matches 1.. run loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/ok