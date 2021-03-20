###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## If the Number is Short
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfWolves matches 1.. run function mwj:system/preparation/decrease_number_of_role/wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfMadmans matches 1.. run function mwj:system/preparation/decrease_number_of_role/madman
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfVillagers matches 1.. run function mwj:system/preparation/decrease_number_of_role/villager
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfSeers matches 1.. run function mwj:system/preparation/decrease_number_of_role/seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfMediums matches 1.. run function mwj:system/preparation/decrease_number_of_role/medium
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfImmorals matches 1.. run function mwj:system/preparation/decrease_number_of_role/immoralist
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFoxes matches 1.. run function mwj:system/preparation/decrease_number_of_role/fox
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfMasons matches 1.. run function mwj:system/preparation/decrease_number_of_role/mason
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfDetectives matches 1.. run function mwj:system/preparation/decrease_number_of_role/detective
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfThieves matches 1.. run function mwj:system/preparation/decrease_number_of_role/thief
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfCats matches 1.. run function mwj:system/preparation/decrease_number_of_role/cat
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFkSeers matches 1.. run function mwj:system/preparation/decrease_number_of_role/fake_seer
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfSages matches 1.. run function mwj:system/preparation/decrease_number_of_role/sage
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfWhWolves matches 1.. run function mwj:system/preparation/decrease_number_of_role/white_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfFanatics matches 1.. run function mwj:system/preparation/decrease_number_of_role/fanatic
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfLtReds matches 1.. run function mwj:system/preparation/decrease_number_of_role/little_red
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfClWolves matches 1.. run function mwj:system/preparation/decrease_number_of_role/clever_wolf
execute if score #MWL PrevAddedRole matches 1.. if score #MWL NumOfBakeries matches 1.. run function mwj:system/preparation/decrease_number_of_role/bakery

execute if score #MWL PrevAddedRole matches 1.. run function mwj:system/preparation/decrease_number_of_role