###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Add Variables for Game
scoreboard objectives add GAME dummy
scoreboard objectives add PREV_NUM dummy
## Variables for Timer
scoreboard objectives add SECOND dummy
scoreboard objectives add TICK dummy
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
scoreboard objectives add SelectWolf dummy
scoreboard objectives add SelectMadman dummy
scoreboard objectives add SelectFox dummy
scoreboard objectives add SelectVilla dummy
scoreboard objectives add SelectSeer dummy
scoreboard objectives add SelectMedium dummy
scoreboard objectives add SelectMason dummy
scoreboard objectives add SelectDetec dummy
scoreboard objectives add SelectThief dummy
scoreboard objectives add SelectCat dummy
## Add Variables for Setting Time
scoreboard objectives add SettingTime dummy
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
scoreboard objectives add TmpAdded dummy
scoreboard objectives add AddedItem1 dummy
scoreboard objectives add AddedItem2 dummy
scoreboard objectives add AddedItem3 dummy
scoreboard objectives add AddedItem4 dummy
scoreboard objectives add AddedItem5 dummy
scoreboard objectives add AddedStick dummy
scoreboard objectives add AddedTotem dummy
scoreboard objectives add AddedDeath2 dummy
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
scoreboard objectives add PrevAddedDeath2 dummy
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
## Add Variables for Denominator
scoreboard objectives add DENOMINATOR dummy

## Set Variables for Timer
scoreboard players operation Time PREV_NUM = Time NUM
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
## Set Variables for Setting Time
scoreboard players set Time SettingTime 60
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
scoreboard players set Time AddedItem1 1
scoreboard players set Time AddedItem2 1
scoreboard players set Time AddedItem3 1
scoreboard players set Time AddedItem4 1
scoreboard players set Time AddedItem5 1
scoreboard players set Time AddedStick 1
scoreboard players set Time AddedTotem 1
scoreboard players set Time AddedDeath2 1
scoreboard players set Time AddedPearl 1
scoreboard players set Time AddedHoe 1
scoreboard players set Time AddedElytra 1
scoreboard players set Time AddedSnowball 1
scoreboard players set Time AddedInvis 1
scoreboard players set Time AddedSpeed 1
scoreboard players set Time AddedJump 1
scoreboard players set Time AddedTrident 1
scoreboard players set Time AddedConduit 1
scoreboard players set Time AddedCrossbow 1
scoreboard players set Time AddedHoneyBlock 0
execute if score Time Version matches 15.. run scoreboard players set Time AddedHoneyBlock 1
scoreboard players set Time AddedLantern 0
execute if score Time Version matches 16.. run scoreboard players set Time AddedLantern 1
scoreboard players set Time PrevAddedStick 1
scoreboard players set Time PrevAddedTotem 1
scoreboard players set Time PrevAddedDeath2 1
scoreboard players set Time PrevAddedPearl 1
scoreboard players set Time PrevAddedHoe 1
scoreboard players set Time PrevAddedElytra 1
scoreboard players set Time PrevAddedSnowbal 1
scoreboard players set Time PrevAddedInvis 1
scoreboard players set Time PrevAddedSpeed 1
scoreboard players set Time PrevAddedJump 1
scoreboard players set Time PrevAddedTrident 1
scoreboard players set Time PrevAddedConduit 1
scoreboard players set Time PrevAddedCrossbo 1
scoreboard players set Time PrevAddedHoneyBl 0
execute if score Time Version matches 15.. run scoreboard players set Time PrevAddedHoneyBl 1
scoreboard players set Time PrevAddedLantern 0
execute if score Time Version matches 16.. run scoreboard players set Time PrevAddedLantern 1
## Set Variables for Denominator
scoreboard players set Time DENOMINATOR 0

## Set bossbar
scoreboard players set Time TICK 0
scoreboard players operation Time SECOND = Time SettingTime
bossbar add minecraft:bossbar [{"text":"初期設定時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name [{"text":"初期設定時間  残り "},{"score":{"name":"Time","objective":"SECOND"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get Time SettingTime
execute store result bossbar minecraft:bossbar value run scoreboard players get Time SECOND