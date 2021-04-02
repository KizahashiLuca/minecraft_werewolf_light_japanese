###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## If the Number is Short
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfWolves matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfMadmans matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/madman
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfVillagers matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/villager
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfSeers matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfMediums matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/medium
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfImmorals matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/immoralist
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFoxes matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/fox
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfMasons matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/mason
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfDetectives matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/detective
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfThieves matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/thief
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfCats matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/cat
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFkSeers matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/fake_seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfSages matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/sage
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfWhWolves matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/white_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFanatics matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/fanatic
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfLtReds matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/little_red
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfClWolves matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/clever_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfBakeries matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/roles/bakery

execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/main