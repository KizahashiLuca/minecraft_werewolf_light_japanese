###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
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
scoreboard objectives add THIEF dummy
scoreboard objectives add FOX dummy
## Add Variables for Setting Added Role
scoreboard objectives add AddedRole dummy
scoreboard objectives add AddedWolf dummy
scoreboard objectives add AddedMadman dummy
scoreboard objectives add AddedFox dummy
scoreboard objectives add AddedVilla dummy
scoreboard objectives add AddedSeer dummy
scoreboard objectives add AddedMedium dummy
scoreboard objectives add AddedMason dummy
scoreboard objectives add AddedDetec dummy
scoreboard objectives add AddedThief dummy
scoreboard objectives add AddedCat dummy
scoreboard objectives add PrevAddedRole dummy
scoreboard objectives add PrevAddedWolf dummy
scoreboard objectives add PrevAddedMadman dummy
scoreboard objectives add PrevAddedFox dummy
scoreboard objectives add PrevAddedVilla dummy
scoreboard objectives add PrevAddedSeer dummy
scoreboard objectives add PrevAddedMedium dummy
scoreboard objectives add PrevAddedMason dummy
scoreboard objectives add PrevAddedDetec dummy
scoreboard objectives add PrevAddedThief dummy
scoreboard objectives add PrevAddedCat dummy
scoreboard objectives add SelectedWolf dummy
scoreboard objectives add SelectedMadman dummy
scoreboard objectives add SelectedFox dummy
scoreboard objectives add SelectedVilla dummy
scoreboard objectives add SelectedSeer dummy
scoreboard objectives add SelectedMedium dummy
scoreboard objectives add SelectedMason dummy
scoreboard objectives add SelectedDetec dummy
scoreboard objectives add SelectedThief dummy
scoreboard objectives add SelectedCat dummy
## Add Variables for Setting Hide Time
scoreboard objectives add HideTime dummy
scoreboard objectives add PrevHideTime dummy
scoreboard objectives add ChangeHideTime dummy
## Add Variables for Setting Glow Time
scoreboard objectives add GlowTime dummy
scoreboard objectives add PrevGlowTime dummy
scoreboard objectives add ChangeGlowTime dummy
## Add Variables for Setting Game Time
scoreboard objectives add GameTime dummy
scoreboard objectives add PrevGameTime dummy
scoreboard objectives add ChangeGameTime dummy
## Add Variables for Setting Game Mode
scoreboard objectives add GameMode dummy
scoreboard objectives add PrevGameMode dummy
## Add Variables for GUI Choose Mode
scoreboard objectives add SelectedCancel dummy
scoreboard objectives add SelectedReset dummy
scoreboard objectives add SelectedOkay dummy
scoreboard objectives add SelectedDecide dummy
scoreboard objectives add ChosenHideTime dummy
scoreboard objectives add ChosenGlowTime dummy
scoreboard objectives add ChosenGameTime dummy
scoreboard objectives add ChosenGameMode dummy
scoreboard objectives add ChosenItemAdd dummy
scoreboard objectives add ChosenRoleAdd dummy
## Add Variables for GUI Hide Time
scoreboard objectives add Selected015secs dummy
scoreboard objectives add Selected030secs dummy
scoreboard objectives add Selected060secs dummy
scoreboard objectives add Selected090secs dummy
scoreboard objectives add Selected120secs dummy
scoreboard objectives add Selected180secs dummy
scoreboard objectives add Selected300secs dummy
## Add Variables for GUI Glow Time
scoreboard objectives add Selected000pers dummy
scoreboard objectives add Selected010pers dummy
scoreboard objectives add Selected020pers dummy
scoreboard objectives add Selected030pers dummy
scoreboard objectives add Selected050pers dummy
scoreboard objectives add Selected080pers dummy
scoreboard objectives add Selected100pers dummy
## Add Variables for GUI Game Time
scoreboard objectives add Selected05mins dummy
scoreboard objectives add Selected10mins dummy
scoreboard objectives add Selected15mins dummy
scoreboard objectives add Selected20mins dummy
scoreboard objectives add Selected25mins dummy
scoreboard objectives add Selected30mins dummy
scoreboard objectives add Selected60mins dummy
## Add Variables for GUI Game Mode
scoreboard objectives add SelectedWof dummy
scoreboard objectives add SelectedTwo dummy
scoreboard objectives add SelectedExt dummy
## Add Variables for GUI Item Addition
scoreboard objectives add TmpAdded dummy
scoreboard objectives add AddedStick dummy
scoreboard objectives add AddedTotem dummy
scoreboard objectives add AddedDeath2 dummy
scoreboard objectives add AddedPearl dummy
scoreboard objectives add AddedHoe dummy
scoreboard objectives add AddedCrossbow dummy
scoreboard objectives add AddedSnowball dummy
scoreboard objectives add AddedInvis dummy
scoreboard objectives add AddedSpeed dummy
scoreboard objectives add AddedJump dummy
scoreboard objectives add AddedElytra dummy
scoreboard objectives add PrevAddedStick dummy
scoreboard objectives add PrevAddedTotem dummy
scoreboard objectives add PrevAddedDeath2 dummy
scoreboard objectives add PrevAddedPearl dummy
scoreboard objectives add PrevAddedHoe dummy
scoreboard objectives add PrevAddedCrossbo dummy
scoreboard objectives add PrevAddedSnowbal dummy
scoreboard objectives add PrevAddedInvis dummy
scoreboard objectives add PrevAddedSpeed dummy
scoreboard objectives add PrevAddedJump dummy
scoreboard objectives add PrevAddedElytra dummy
scoreboard objectives add SelectedStick dummy
scoreboard objectives add SelectedTotem dummy
scoreboard objectives add SelectedDeath2 dummy
scoreboard objectives add SelectedPearl dummy
scoreboard objectives add SelectedHoe dummy
scoreboard objectives add SelectedCrossbow dummy
scoreboard objectives add SelectedSnowball dummy
scoreboard objectives add SelectedInvis dummy
scoreboard objectives add SelectedSpeed dummy
scoreboard objectives add SelectedJump dummy
scoreboard objectives add SelectedElytra dummy
scoreboard objectives add SelectedPrevPage dummy
scoreboard objectives add SelectedNextPage dummy
scoreboard objectives add SelectedDecide1 dummy
scoreboard objectives add SelectedDecide2 dummy
scoreboard objectives add SelectedDecide3 dummy
scoreboard objectives add SelectedDecide4 dummy
scoreboard objectives add SelectedDecide5 dummy
## Add Variables for Throwing Item
scoreboard objectives add ThrowItem dummy
## Add Variables for Denominator
scoreboard objectives add DENOMINATOR dummy

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
scoreboard players set Time THIEF 0
scoreboard players set Time FOX 0
scoreboard players set Time DENOMINATOR 0
## Set Variables for Setting Added Role
scoreboard players set Time AddedRole 0
scoreboard players set Time AddedWolf 0
scoreboard players set Time AddedMadman 0
scoreboard players set Time AddedFox 0
scoreboard players set Time AddedVilla 0
scoreboard players set Time AddedSeer 0
scoreboard players set Time AddedMedium 0
scoreboard players set Time AddedMason 0
scoreboard players set Time AddedDetec 0
scoreboard players set Time AddedThief 0
scoreboard players set Time AddedCat 0
scoreboard players set Time PrevAddedRole 0
scoreboard players set Time PrevAddedWolf 0
scoreboard players set Time PrevAddedMadman 0
scoreboard players set Time PrevAddedFox 0
scoreboard players set Time PrevAddedVilla 0
scoreboard players set Time PrevAddedSeer 0
scoreboard players set Time PrevAddedMedium 0
scoreboard players set Time PrevAddedMason 0
scoreboard players set Time PrevAddedDetec 0
scoreboard players set Time PrevAddedThief 0
scoreboard players set Time PrevAddedCat 0
## Set Variables for Setting Hide Time
scoreboard players set Time HideTime 4
scoreboard players set Time PrevHideTime 4
scoreboard players set Time ChangeHideTime 15
## Set Variables for Setting Glow Time
scoreboard players set Time GlowTime 2
scoreboard players set Time PrevGlowTime 2
scoreboard players set Time ChangeGlowTime 0
## Set Variables for Setting Game Time
scoreboard players set Time GameTime 4
scoreboard players set Time PrevGameTime 4
scoreboard players set Time ChangeGameTime 5
## Set Variables for Setting Game Mode
scoreboard players set Time GameMode 3
scoreboard players set Time PrevGameMode 3
## Set Variables for GUI Item Addition
scoreboard players set Time AddedStick 1
scoreboard players set Time AddedTotem 1
scoreboard players set Time AddedDeath2 1
scoreboard players set Time AddedPearl 1
scoreboard players set Time AddedHoe 1
scoreboard players set Time AddedCrossbow 1
scoreboard players set Time AddedSnowball 1
scoreboard players set Time AddedInvis 1
scoreboard players set Time AddedSpeed 1
scoreboard players set Time AddedJump 1
scoreboard players set Time AddedElytra 1
scoreboard players set Time PrevAddedStick 1
scoreboard players set Time PrevAddedTotem 1
scoreboard players set Time PrevAddedDeath2 1
scoreboard players set Time PrevAddedPearl 1
scoreboard players set Time PrevAddedHoe 1
scoreboard players set Time PrevAddedCrossbo 1
scoreboard players set Time PrevAddedSnowbal 1
scoreboard players set Time PrevAddedInvis 1
scoreboard players set Time PrevAddedSpeed 1
scoreboard players set Time PrevAddedJump 1
scoreboard players set Time PrevAddedElytra 1
## Set Variables for Denominator
scoreboard players set Time DENOMINATOR 0