###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Add Variables for Game
scoreboard objectives add Phase dummy
scoreboard objectives add NumOfRoles dummy
scoreboard objectives add PrevNumOfPlayers dummy
## Add Variables for Timer
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
## Add Variables for Game
scoreboard objectives add CurrentRole dummy
## Add Variables for Role Number
scoreboard objectives add NumOfWolves dummy
scoreboard objectives add NumOfMadmans dummy
scoreboard objectives add NumOfVillagers dummy
scoreboard objectives add NumOfSeers dummy
scoreboard objectives add NumOfMediums dummy
scoreboard objectives add NumOfFoxes dummy
scoreboard objectives add NumOfMasons dummy
scoreboard objectives add NumOfDetectives dummy
scoreboard objectives add NumOfThieves dummy
scoreboard objectives add NumOfCats dummy
scoreboard objectives add NumOfFkSeers dummy
scoreboard objectives add NumOfSages dummy
scoreboard objectives add NumOfWhWolves dummy
scoreboard objectives add NumOfFanatics dummy
scoreboard objectives add NumOfImmorals dummy
## Add Variables for Setting Added Role
scoreboard objectives add AddedRoleNumber dummy
scoreboard objectives add AddedRole dummy
scoreboard objectives add AddedWolf dummy
scoreboard objectives add AddedMadman dummy
scoreboard objectives add AddedVilla dummy
scoreboard objectives add AddedSeer dummy
scoreboard objectives add AddedMedium dummy
scoreboard objectives add AddedFox dummy
scoreboard objectives add AddedMason dummy
scoreboard objectives add AddedDetec dummy
scoreboard objectives add AddedThief dummy
scoreboard objectives add AddedCat dummy
scoreboard objectives add AddedFkSeer dummy
scoreboard objectives add AddedSage dummy
scoreboard objectives add AddedWhWolf dummy
scoreboard objectives add AddedFanatic dummy
scoreboard objectives add AddedImmoral dummy
scoreboard objectives add PrevAddedRole dummy
scoreboard objectives add PrevAddedWolf dummy
scoreboard objectives add PrevAddedMadman dummy
scoreboard objectives add PrevAddedVilla dummy
scoreboard objectives add PrevAddedSeer dummy
scoreboard objectives add PrevAddedMedium dummy
scoreboard objectives add PrevAddedFox dummy
scoreboard objectives add PrevAddedMason dummy
scoreboard objectives add PrevAddedDetec dummy
scoreboard objectives add PrevAddedThief dummy
scoreboard objectives add PrevAddedCat dummy
scoreboard objectives add PrevAddedFkSeer dummy
scoreboard objectives add PrevAddedSage dummy
scoreboard objectives add PrevAddedWhWolf dummy
scoreboard objectives add PrevAddedFanatic dummy
scoreboard objectives add PrevAddedImmoral dummy
scoreboard objectives add AddedRole1 dummy
scoreboard objectives add AddedRole2 dummy
scoreboard objectives add AddedRole3 dummy
scoreboard objectives add AddedRole4 dummy
scoreboard objectives add AddedRole5 dummy
scoreboard objectives add SelectNumber dummy
## Add Variables for Setting Time
scoreboard objectives add SettingTime dummy
## Add Variables for Setting Dummy Role
scoreboard objectives add DummyRole dummy
scoreboard objectives add SetDummyRole dummy
scoreboard objectives add PrevSetDummyRole dummy
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
scoreboard objectives add SelectCancel dummy
scoreboard objectives add SelectReset dummy
scoreboard objectives add SelectOkay dummy
scoreboard objectives add SelectDecide dummy
scoreboard objectives add ChosenDummyRole dummy
scoreboard objectives add ChosenHideTime dummy
scoreboard objectives add ChosenGlowTime dummy
scoreboard objectives add ChosenGameTime dummy
scoreboard objectives add ChosenGameMode dummy
scoreboard objectives add ChosenItemAdd dummy
scoreboard objectives add ChosenRoleAdd dummy
## Add Variables for GUI Hide Time
scoreboard objectives add Select015secs dummy
scoreboard objectives add Select030secs dummy
scoreboard objectives add Select060secs dummy
scoreboard objectives add Select090secs dummy
scoreboard objectives add Select120secs dummy
scoreboard objectives add Select180secs dummy
scoreboard objectives add Select300secs dummy
## Add Variables for GUI Glow Time
scoreboard objectives add Select000pers dummy
scoreboard objectives add Select010pers dummy
scoreboard objectives add Select020pers dummy
scoreboard objectives add Select030pers dummy
scoreboard objectives add Select050pers dummy
scoreboard objectives add Select080pers dummy
scoreboard objectives add Select100pers dummy
## Add Variables for GUI Game Time
scoreboard objectives add Select05mins dummy
scoreboard objectives add Select10mins dummy
scoreboard objectives add Select15mins dummy
scoreboard objectives add Select20mins dummy
scoreboard objectives add Select25mins dummy
scoreboard objectives add Select30mins dummy
scoreboard objectives add Select60mins dummy
## Add Variables for GUI Game Mode
scoreboard objectives add SelectNormalWolf dummy
scoreboard objectives add SelectTwoAlive dummy
scoreboard objectives add SelectAnnihilate dummy
## Add Variables for GUI Item Addition
scoreboard objectives add AddedStick dummy
scoreboard objectives add AddedTotem dummy
scoreboard objectives add AddedDeath dummy
scoreboard objectives add AddedPearl dummy
scoreboard objectives add AddedHoe dummy
scoreboard objectives add AddedElytra dummy
scoreboard objectives add AddedSnowball dummy
scoreboard objectives add AddedInvis dummy
scoreboard objectives add AddedSpeed dummy
scoreboard objectives add AddedJump dummy
scoreboard objectives add AddedTrident dummy
scoreboard objectives add AddedConduit dummy
scoreboard objectives add AddedCrossbow dummy
scoreboard objectives add AddedHoneyBlock dummy
scoreboard objectives add AddedLantern dummy
scoreboard objectives add PrevAddedStick dummy
scoreboard objectives add PrevAddedTotem dummy
scoreboard objectives add PrevAddedDeath dummy
scoreboard objectives add PrevAddedPearl dummy
scoreboard objectives add PrevAddedHoe dummy
scoreboard objectives add PrevAddedElytra dummy
scoreboard objectives add PrevAddedSnowbal dummy
scoreboard objectives add PrevAddedInvis dummy
scoreboard objectives add PrevAddedSpeed dummy
scoreboard objectives add PrevAddedJump dummy
scoreboard objectives add PrevAddedTrident dummy
scoreboard objectives add PrevAddedConduit dummy
scoreboard objectives add PrevAddedCrossbo dummy
scoreboard objectives add PrevAddedHoneyBl dummy
scoreboard objectives add PrevAddedLantern dummy
scoreboard objectives add AddedItem1 dummy
scoreboard objectives add AddedItem2 dummy
scoreboard objectives add AddedItem3 dummy
scoreboard objectives add AddedItem4 dummy
scoreboard objectives add AddedItem5 dummy
## Add Variables for GUI Addition Common
scoreboard objectives add TmpAdded dummy
scoreboard objectives add SelectAllDel dummy
scoreboard objectives add SelectAllSet dummy
scoreboard objectives add SelectPrevPage dummy
scoreboard objectives add SelectNextPage dummy
scoreboard objectives add SelectItem1 dummy
scoreboard objectives add SelectItem2 dummy
scoreboard objectives add SelectItem3 dummy
scoreboard objectives add SelectItem4 dummy
scoreboard objectives add SelectItem5 dummy
scoreboard objectives add SelectDecide1 dummy
scoreboard objectives add SelectDecide2 dummy
scoreboard objectives add SelectDecide3 dummy
scoreboard objectives add SelectDecide4 dummy
scoreboard objectives add SelectDecide5 dummy
## Add Variables for Throwing Item
scoreboard objectives add ThrowItem dummy
## Add Temporary Variable
scoreboard objectives add TempVariable dummy

## Set Variables for Timer
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
scoreboard players operation #MWL PrevNumOfPlayers = #MWL NumOfPlayers
## Set Variables for Game
scoreboard players set @a CurrentRole 0
## Set Variables for CurrentRole
scoreboard players set #MWL NumOfWolves 0
scoreboard players set #MWL NumOfMadmans 0
scoreboard players set #MWL NumOfVillagers 0
scoreboard players set #MWL NumOfSeers 0
scoreboard players set #MWL NumOfMediums 0
scoreboard players set #MWL NumOfFoxes 0
scoreboard players set #MWL NumOfMasons 0
scoreboard players set #MWL NumOfDetectives 0
scoreboard players set #MWL NumOfThieves 0
scoreboard players set #MWL NumOfCats 0
scoreboard players set #MWL NumOfFkSeers 0
scoreboard players set #MWL NumOfSages 0
scoreboard players set #MWL NumOfWhWolves 0
scoreboard players set #MWL NumOfFanatics 0
scoreboard players set #MWL NumOfImmorals 0
## Set Variables for Setting Added Role
scoreboard players set #MWL AddedRoleNumber 0
scoreboard players set #MWL AddedRole 0
scoreboard players set #MWL AddedWolf 0
scoreboard players set #MWL AddedMadman 0
scoreboard players set #MWL AddedVilla 0
scoreboard players set #MWL AddedSeer 0
scoreboard players set #MWL AddedMedium 0
scoreboard players set #MWL AddedFox 0
scoreboard players set #MWL AddedMason 0
scoreboard players set #MWL AddedDetec 0
scoreboard players set #MWL AddedThief 0
scoreboard players set #MWL AddedCat 0
scoreboard players set #MWL AddedFkSeer 0
scoreboard players set #MWL AddedSage 0
scoreboard players set #MWL AddedWhWolf 0
scoreboard players set #MWL AddedFanatic 0
scoreboard players set #MWL AddedImmoral 0
scoreboard players set #MWL PrevAddedRole 0
scoreboard players set #MWL PrevAddedWolf 0
scoreboard players set #MWL PrevAddedMadman 0
scoreboard players set #MWL PrevAddedVilla 0
scoreboard players set #MWL PrevAddedSeer 0
scoreboard players set #MWL PrevAddedMedium 0
scoreboard players set #MWL PrevAddedFox 0
scoreboard players set #MWL PrevAddedMason 0
scoreboard players set #MWL PrevAddedDetec 0
scoreboard players set #MWL PrevAddedThief 0
scoreboard players set #MWL PrevAddedCat 0
scoreboard players set #MWL PrevAddedFkSeer 0
scoreboard players set #MWL PrevAddedSage 0
scoreboard players set #MWL PrevAddedWhWolf 0
scoreboard players set #MWL PrevAddedFanatic 0
scoreboard players set #MWL PrevAddedImmoral 0
## Set Variables for Setting Time
scoreboard players set #MWL SettingTime 600
## Set Variables for Setting Dummy Role
scoreboard players set #MWL DummyRole 0
scoreboard players set #MWL SetDummyRole 0
scoreboard players set #MWL PrevSetDummyRole 0
## Set Variables for Setting Hide Time
scoreboard players set #MWL HideTime 4
scoreboard players set #MWL PrevHideTime 4
scoreboard players set #MWL ChangeHideTime 15
## Set Variables for Setting Glow Time
scoreboard players set #MWL GlowTime 2
scoreboard players set #MWL PrevGlowTime 2
scoreboard players set #MWL ChangeGlowTime 0
## Set Variables for Setting Game Time
scoreboard players set #MWL GameTime 4
scoreboard players set #MWL PrevGameTime 4
scoreboard players set #MWL ChangeGameTime 5
## Set Variables for Setting Game Mode
scoreboard players set #MWL GameMode 3
scoreboard players set #MWL PrevGameMode 3
## Set Variables for GUI Item Addition
scoreboard players set #MWL AddedStick 1
scoreboard players set #MWL AddedTotem 1
scoreboard players set #MWL AddedDeath 1
scoreboard players set #MWL AddedPearl 1
scoreboard players set #MWL AddedHoe 1
scoreboard players set #MWL AddedElytra 1
scoreboard players set #MWL AddedSnowball 1
scoreboard players set #MWL AddedInvis 1
scoreboard players set #MWL AddedSpeed 1
scoreboard players set #MWL AddedJump 1
scoreboard players set #MWL AddedTrident 1
scoreboard players set #MWL AddedConduit 1
scoreboard players set #MWL AddedCrossbow 1
scoreboard players set #MWL AddedHoneyBlock 0
execute if score #MWL Version matches 15.. run scoreboard players set #MWL AddedHoneyBlock 1
scoreboard players set #MWL AddedLantern 0
execute if score #MWL Version matches 16.. run scoreboard players set #MWL AddedLantern 1
scoreboard players set #MWL PrevAddedStick 1
scoreboard players set #MWL PrevAddedTotem 1
scoreboard players set #MWL PrevAddedDeath 1
scoreboard players set #MWL PrevAddedPearl 1
scoreboard players set #MWL PrevAddedHoe 1
scoreboard players set #MWL PrevAddedElytra 1
scoreboard players set #MWL PrevAddedSnowbal 1
scoreboard players set #MWL PrevAddedInvis 1
scoreboard players set #MWL PrevAddedSpeed 1
scoreboard players set #MWL PrevAddedJump 1
scoreboard players set #MWL PrevAddedTrident 1
scoreboard players set #MWL PrevAddedConduit 1
scoreboard players set #MWL PrevAddedCrossbo 1
scoreboard players set #MWL PrevAddedHoneyBl 0
execute if score #MWL Version matches 15.. run scoreboard players set #MWL PrevAddedHoneyBl 1
scoreboard players set #MWL PrevAddedLantern 0
execute if score #MWL Version matches 16.. run scoreboard players set #MWL PrevAddedLantern 1
## Add Variables for GUI Addition Common
scoreboard players set #MWL AddedItem1 1
scoreboard players set #MWL AddedItem2 1
scoreboard players set #MWL AddedItem3 1
scoreboard players set #MWL AddedItem4 1
scoreboard players set #MWL AddedItem5 1
## Set Temporary Variable
scoreboard players set #MWL TempVariable 0

## Set bossbar
scoreboard players set #MWL Tick 0
scoreboard players operation #MWL Second = #MWL SettingTime
bossbar add minecraft:bossbar [{"text":"初期設定時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name [{"text":"初期設定時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL SettingTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second