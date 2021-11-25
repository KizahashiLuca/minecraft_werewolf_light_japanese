####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set scoreboard
scoreboard players set @a 2ndRole 0

## Set 2nd role
execute if score #MWL 2ndRoleMode matches 1 run scoreboard players set @p[team=Player,scores={2ndRole=0},sort=random] 2ndRole 1
execute if score #MWL 2ndRoleMode matches 2 run scoreboard players set @p[team=Player,scores={2ndRole=0},sort=random] 2ndRole 2