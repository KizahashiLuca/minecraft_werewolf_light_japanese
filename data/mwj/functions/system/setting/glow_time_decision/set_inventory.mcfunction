####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Replace Inventory
loot replace entity @p[tag=Host] inventory.10 loot mwj:setting/glow_time/paper_000pers
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/glow_time/paper_010pers
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/glow_time/paper_020pers
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/glow_time/paper_030pers
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/glow_time/paper_050pers
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/glow_time/paper_080pers
loot replace entity @p[tag=Host] inventory.16 loot mwj:setting/glow_time/paper_100pers
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/common/barrier
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/common/structure_void

## Set Nether Star above Glow Time
execute if score #MWL GlowTime matches 0 run loot replace entity @p[tag=Host] inventory.1 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 1 run loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 2 run loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 3 run loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 5 run loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 8 run loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/common/nether_star_selected
execute if score #MWL GlowTime matches 10 run loot replace entity @p[tag=Host] inventory.7 loot mwj:setting/common/nether_star_selected