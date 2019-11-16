###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Add Variables for Game
scoreboard objectives add GAME dummy
scoreboard objectives add PREV_NUM dummy
## Variables for Timer
scoreboard objectives add SECOND dummy
scoreboard objectives add TICK dummy
scoreboard objectives add 20 dummy
## Add Variables for Role Number
scoreboard objectives add WOLF dummy
scoreboard objectives add MADMAN dummy
scoreboard objectives add VILLAGER dummy
scoreboard objectives add SEER dummy
scoreboard objectives add MEDIUM dummy
scoreboard objectives add CAT dummy
scoreboard objectives add MASON dummy
scoreboard objectives add DETECTIVE dummy
scoreboard objectives add FOX dummy
scoreboard objectives add DENOMINATOR dummy
## Add Variables for Setting Added Role
scoreboard objectives add AddedRole dummy
scoreboard objectives add AddedFox dummy
scoreboard objectives add AddedVilla dummy
scoreboard objectives add AddedMason dummy
scoreboard objectives add AddedDetec dummy
scoreboard objectives add AddedCat dummy
scoreboard objectives add PrevAddedRole dummy
scoreboard objectives add PrevAddedFox dummy
scoreboard objectives add PrevAddedVilla dummy
scoreboard objectives add PrevAddedMason dummy
scoreboard objectives add PrevAddedDetec dummy
scoreboard objectives add PrevAddedCat dummy
## Add Variables for Setting Time Limit
scoreboard objectives add LimitTime dummy
scoreboard objectives add PrevLimitTime dummy
scoreboard objectives add ChangeLimitTime dummy
scoreboard objectives add GlowingTime dummy
## Add Variables for Setting Game Mode
scoreboard objectives add GameMode dummy
scoreboard objectives add PrevGameMode dummy

## Add Variables for GUI Choose Mode
scoreboard objectives add SelectedCancel dummy
scoreboard objectives add SelectedReset dummy
scoreboard objectives add SelectedOkay dummy
scoreboard objectives add SelectedDecide dummy
scoreboard objectives add ChosenTimeLimit dummy
scoreboard objectives add ChosenRoleAdd dummy
scoreboard objectives add ChosenGameMode dummy
## Add Variables for GUI Added Role
scoreboard objectives add SelectedFox dummy
scoreboard objectives add SelectedVilla dummy
scoreboard objectives add SelectedMason dummy
scoreboard objectives add SelectedDetec dummy
scoreboard objectives add SelectedCat dummy
## Add Variables for GUI Time Limit
scoreboard objectives add Selected10mins dummy
scoreboard objectives add Selected15mins dummy
scoreboard objectives add Selected20mins dummy
scoreboard objectives add Selected25mins dummy
scoreboard objectives add Selected30mins dummy
## Add Variables for GUI Game Mode
scoreboard objectives add SelectedWof dummy
scoreboard objectives add SelectedTwo dummy
scoreboard objectives add SelectedExt dummy
## Add Variables for Throwing Item
scoreboard objectives add ThrowItem dummy

## Set Variables for Timer
scoreboard players operation Time PREV_NUM = Time NUM
scoreboard players set Time 20 20
## Set Variables for ROLE
scoreboard players set Time WOLF 0
scoreboard players set Time MADMAN 0
scoreboard players set Time VILLAGER 0
scoreboard players set Time SEER 0
scoreboard players set Time MEDIUM 0
scoreboard players set Time CAT 0
scoreboard players set Time MASON 0
scoreboard players set Time DETECTIVE 0
scoreboard players set Time FOX 0
scoreboard players set Time DENOMINATOR 0
## Set Variables for Setting Added Role
scoreboard players set Time AddedRole 0
scoreboard players set Time AddedFox 0
scoreboard players set Time AddedVilla 0
scoreboard players set Time AddedMason 0
scoreboard players set Time AddedDetec 0
scoreboard players set Time AddedCat 0
scoreboard players set Time PrevAddedRole 0
scoreboard players set Time PrevAddedFox 0
scoreboard players set Time PrevAddedVilla 0
scoreboard players set Time PrevAddedMason 0
scoreboard players set Time PrevAddedDetec 0
scoreboard players set Time PrevAddedCat 0
## Set Variables for Setting Time Limit
scoreboard players set Time LimitTime 2
scoreboard players set Time PrevLimitTime 2
scoreboard players set Time ChangeLimitTime 5
scoreboard players set Time GlowingTime 30
scoreboard players set Time DENOMINATOR 0
## Set Variables for Setting Game Mode
scoreboard players set Time GameMode 2
scoreboard players set Time PrevGameMode 2