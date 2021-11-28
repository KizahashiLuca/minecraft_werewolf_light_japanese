####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## If the Number is Short
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfWolves matches 1.. run function mwj:system/common/roles/decrease_roles/roles/wolf
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfClWolves matches 1.. run function mwj:system/common/roles/decrease_roles/roles/clever_wolf
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfWhWolves matches 1.. run function mwj:system/common/roles/decrease_roles/roles/white_wolf
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfMadmans matches 1.. run function mwj:system/common/roles/decrease_roles/roles/madman
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfFanatics matches 1.. run function mwj:system/common/roles/decrease_roles/roles/fanatic
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfFoxes matches 1.. run function mwj:system/common/roles/decrease_roles/roles/fox
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfImmorals matches 1.. run function mwj:system/common/roles/decrease_roles/roles/immoralist
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfVillagers matches 1.. run function mwj:system/common/roles/decrease_roles/roles/villager
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfBakeries matches 1.. run function mwj:system/common/roles/decrease_roles/roles/bakery
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfLycants matches 1.. run function mwj:system/common/roles/decrease_roles/roles/lycanthrope
execute if score #MWL TmpNumOfRoles matches 2.. if score #MWL NumOfMasons matches 2.. run function mwj:system/common/roles/decrease_roles/roles/mason
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfSeers matches 1.. run function mwj:system/common/roles/decrease_roles/roles/seer
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfFkSeers matches 1.. run function mwj:system/common/roles/decrease_roles/roles/fake_seer
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfSages matches 1.. run function mwj:system/common/roles/decrease_roles/roles/sage
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfMediums matches 1.. run function mwj:system/common/roles/decrease_roles/roles/medium
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfDetectives matches 1.. run function mwj:system/common/roles/decrease_roles/roles/detective
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfThieves matches 1.. run function mwj:system/common/roles/decrease_roles/roles/thief
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfLtReds matches 1.. run function mwj:system/common/roles/decrease_roles/roles/little_red
execute if score #MWL TmpNumOfRoles matches 1.. if score #MWL NumOfCats matches 1.. run function mwj:system/common/roles/decrease_roles/roles/cat

execute if score #MWL TmpNumOfRoles matches 1.. run function mwj:system/common/roles/decrease_roles/main