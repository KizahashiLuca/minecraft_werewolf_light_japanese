####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Recount number of roles
function mwj:system/common/roles/count_number_of_roles

## Recount the Number of Roles
scoreboard players operation #MWL NumOfMasonPair = #MWL NumOfMasons
scoreboard players operation #MWL NumOfMasonPair /= #MWL Num00002
scoreboard players operation #MWL NumOfVillagers += #MWL NumOfRestRoles

## Set messages
function mwj:system/common/message/change_to

## Set scoreboards
function mwj:system/hide_phase/settings/set_scoreboards

## Set scoreboards
function mwj:system/hide_phase/settings/set_bossbars