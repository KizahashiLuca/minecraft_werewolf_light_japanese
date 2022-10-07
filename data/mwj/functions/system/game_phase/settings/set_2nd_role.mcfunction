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
scoreboard players set @a Set2ndRole 0

## Set 2nd role
execute if predicate mwj:game_rule/secondrole_ghost run scoreboard players set @p[predicate=mwj:system/game_phase/settings/set_2nd_role/none,sort=random] Set2ndRole 1
execute if predicate mwj:game_rule/secondrole_drunk run scoreboard players set @p[predicate=mwj:system/game_phase/settings/set_2nd_role/none,sort=random] Set2ndRole 2