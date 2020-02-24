###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Add Variables for Setting Added Role
scoreboard objectives remove PrevAddedRole
scoreboard objectives remove PrevAddedWolf
scoreboard objectives remove PrevAddedMadman
scoreboard objectives remove PrevAddedFox
scoreboard objectives remove PrevAddedVilla
scoreboard objectives remove PrevAddedSeer
scoreboard objectives remove PrevAddedMedium
scoreboard objectives remove PrevAddedMason
scoreboard objectives remove PrevAddedDetec
scoreboard objectives remove PrevAddedThief
scoreboard objectives remove PrevAddedCat
scoreboard objectives remove SelectedWolf
scoreboard objectives remove SelectedMadman
scoreboard objectives remove SelectedFox
scoreboard objectives remove SelectedVilla
scoreboard objectives remove SelectedSeer
scoreboard objectives remove SelectedMedium
scoreboard objectives remove SelectedMason
scoreboard objectives remove SelectedDetec
scoreboard objectives remove SelectedThief
scoreboard objectives remove SelectedCat
## Add Variables for Setting Time Limit
scoreboard objectives remove LimitTime
scoreboard objectives remove PrevLimitTime
## Add Variables for Setting Game Mode
scoreboard objectives remove PrevGameMode
## Add Variables for Setting Hiding Time
scoreboard objectives remove HidingTime
scoreboard objectives remove PrevHidingTime
## Add Variables for GUI Choose Mode
scoreboard objectives remove SelectedCancel
scoreboard objectives remove SelectedReset
scoreboard objectives remove SelectedOkay
scoreboard objectives remove SelectedDecide
scoreboard objectives remove ChosenHidingTime
scoreboard objectives remove ChosenTimeLimit
scoreboard objectives remove ChosenRoleAdd
scoreboard objectives remove ChosenItemAdd
scoreboard objectives remove ChosenGameMode
## Add Variables for GUI Time Limit
scoreboard objectives remove Selected10mins
scoreboard objectives remove Selected15mins
scoreboard objectives remove Selected20mins
scoreboard objectives remove Selected25mins
scoreboard objectives remove Selected30mins
## Add Variables for GUI Game Mode
scoreboard objectives remove SelectedWof
scoreboard objectives remove SelectedTwo
scoreboard objectives remove SelectedExt
## Add Variables for GUI Hiding Time
scoreboard objectives remove Selected00secs
scoreboard objectives remove Selected30secs
scoreboard objectives remove Selected60secs
scoreboard objectives remove Selected90secs
scoreboard objectives remove Selected120secs
## Add Variables for GUI Item Addition
scoreboard objectives remove TmpAdded
scoreboard objectives remove PrevAddedStick
scoreboard objectives remove PrevAddedTotem
scoreboard objectives remove PrevAddedDeath2
scoreboard objectives remove PrevAddedPearl
scoreboard objectives remove PrevAddedHoe
scoreboard objectives remove PrevAddedCrossbo
scoreboard objectives remove PrevAddedSnowbal
scoreboard objectives remove PrevAddedInvis
scoreboard objectives remove PrevAddedSpeed
scoreboard objectives remove PrevAddedJump
scoreboard objectives remove PrevAddedElytra
scoreboard objectives remove SelectedStick
scoreboard objectives remove SelectedTotem
scoreboard objectives remove SelectedDeath2
scoreboard objectives remove SelectedPearl
scoreboard objectives remove SelectedHoe
scoreboard objectives remove SelectedCrossbow
scoreboard objectives remove SelectedSnowball
scoreboard objectives remove SelectedInvis
scoreboard objectives remove SelectedSpeed
scoreboard objectives remove SelectedJump
scoreboard objectives remove SelectedElytra
scoreboard objectives remove SelectedPrevPage
scoreboard objectives remove SelectedNextPage
## Add Variables for Throwing Item
scoreboard objectives remove ThrowItem

## Clear Inventory
clear @a