####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Added Role Number
scoreboard players operation #MWL AddedRole = #MWL NumOfVillagers
scoreboard players remove #MWL AddedRole 1
scoreboard players set #MWL TempVariable 2
scoreboard players operation #MWL AddedRole /= #MWL TempVariable
execute if score #MWL NumOfRoles matches ..7 run scoreboard players set #MWL AddedRole 0
execute if score #MWL AddedRole matches ..-1 run scoreboard players set #MWL AddedRole 0

scoreboard players operation #MWL AddedRoleNumber = #MWL AddedRole