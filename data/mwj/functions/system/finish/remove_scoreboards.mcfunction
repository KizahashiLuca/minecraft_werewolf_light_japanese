###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Remove Variables for Game
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove NUM
scoreboard objectives remove PrevNumOfPlayers
scoreboard objectives remove CurrentRole
scoreboard objectives remove PrevRole
scoreboard objectives remove WINNER
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove PURPLE
## Remove Variables for Timer
scoreboard objectives remove Second
scoreboard objectives remove Tick
## Remove Variables for Number of Roles
scoreboard objectives remove NumOfWolves
scoreboard objectives remove NumOfMadmans
scoreboard objectives remove NumOfVillagers
scoreboard objectives remove NumOfSeers
scoreboard objectives remove NumOfMediums
scoreboard objectives remove NumOfFoxes
scoreboard objectives remove NumOfMasons
scoreboard objectives remove NumOfDetectives
scoreboard objectives remove NumOfThieves
scoreboard objectives remove NumOfCats
scoreboard objectives remove NumOfFkSeers
scoreboard objectives remove NumOfSages
scoreboard objectives remove NumOfWhWolves
scoreboard objectives remove NumOfFanatics
scoreboard objectives remove NumOfImmorals
## Remove Variables for Mason Number
scoreboard objectives remove MASON_PAIR
scoreboard objectives remove MASON_PAIR_NUM
## Remove Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives remove RoleOfNum
scoreboard objectives remove DropTorch
scoreboard objectives remove RemovedTorch
scoreboard objectives remove DONE
scoreboard objectives remove 10
scoreboard objectives remove PageNumer
scoreboard objectives remove PageDenom
scoreboard objectives remove TurnPageNum
scoreboard objectives remove TurnPageMax
scoreboard objectives remove RoleTarget
scoreboard objectives remove TurnPageRight
scoreboard objectives remove TurnPageLeft
scoreboard objectives remove RoleTrigger
#### Fox
scoreboard objectives remove KilledBySeer
scoreboard objectives remove FoxSpawnSecond
scoreboard objectives remove FoxSpawnTick
scoreboard objectives remove RESPAWN
#### Mason
scoreboard objectives remove MASON_PAIR
scoreboard objectives remove MASON_PAIR_NUM
#### Thief
scoreboard objectives remove STEALER
scoreboard objectives remove STOLEN
scoreboard objectives remove STEAL_NUM
scoreboard objectives remove STEAL_TARGET
scoreboard objectives remove STEAL_FLAG
scoreboard objectives remove ThiefStealSecond
scoreboard objectives remove ThiefStealTick
#### Cat
scoreboard objectives remove KilledByCat
## Remove Variables for Items
scoreboard objectives remove SneakTime
#### Snowball
scoreboard objectives remove SNOWBALL
#### Trident
scoreboard objectives remove ThrowTrident
scoreboard objectives remove KilledByTrident
#### Mines
scoreboard objectives remove DropConduit
#### Honey block
scoreboard objectives remove HoneyBottleCount
scoreboard objectives remove DropHoneyBlock
#### Soul lantern
scoreboard objectives remove TeleporterTemp
scoreboard objectives remove TeleporterPosX
scoreboard objectives remove TeleporterPosY
scoreboard objectives remove TeleporterPosZ
scoreboard objectives remove DropSoulLantern
scoreboard objectives remove DropLantern

## Remove Variables for Kill Log
scoreboard objectives remove DeathCount
scoreboard objectives remove KILLER
scoreboard objectives remove VICTIM
scoreboard objectives remove KILLER_NUM
scoreboard objectives remove VICTIM_NUM
scoreboard objectives remove VICTIM_FLAG
scoreboard objectives remove KILLER_FLAG
scoreboard objectives remove KILLLOG_NUM
scoreboard objectives remove KillLogOfFox
scoreboard objectives remove KillLogOfCat
scoreboard objectives remove KillLogOfTrident
## Remove Variables for Role Addition
scoreboard objectives remove AddedRoleNumber
scoreboard objectives remove AddedRole
scoreboard objectives remove AddedWolf
scoreboard objectives remove AddedMadman
scoreboard objectives remove AddedVilla
scoreboard objectives remove AddedSeer
scoreboard objectives remove AddedMedium
scoreboard objectives remove AddedFox
scoreboard objectives remove AddedMason
scoreboard objectives remove AddedDetec
scoreboard objectives remove AddedThief
scoreboard objectives remove AddedCat
scoreboard objectives remove AddedFkSeer
scoreboard objectives remove AddedSage
scoreboard objectives remove AddedWhWolf
scoreboard objectives remove AddedFanatic
scoreboard objectives remove AddedImmoral
scoreboard objectives remove PrevAddedRole
## Remove Variables for Item Addition
scoreboard objectives remove AddedStick
scoreboard objectives remove AddedTotem
scoreboard objectives remove AddedDeath
scoreboard objectives remove AddedPearl
scoreboard objectives remove AddedHoe
scoreboard objectives remove AddedElytra
scoreboard objectives remove AddedSnowball
scoreboard objectives remove AddedInvis
scoreboard objectives remove AddedSpeed
scoreboard objectives remove AddedJump
scoreboard objectives remove AddedTrident
scoreboard objectives remove AddedConduit
scoreboard objectives remove AddedCrossbow
scoreboard objectives remove AddedHoneyBlock
scoreboard objectives remove AddedLantern
## Remove Variables for Setting Time
scoreboard objectives remove SettingTime
## Remove Variables for Hide Time
scoreboard objectives remove ChangeHideTime
## Remove Variables for Glow Time
scoreboard objectives remove ChangeGlowTime
## Remove Variables for Game Time
scoreboard objectives remove ChangeGameTime
## Remove Variables for Game Rules
scoreboard objectives remove GameMode
## Remove Variables for CurrentRole
scoreboard objectives remove TempVariable
## Remove Variables for Item
scoreboard objectives remove TENS_DIGIT
scoreboard objectives remove ONES_DIGIT
scoreboard objectives remove TEMP_DIGIT
## Remove Players
scoreboard players reset @a
scoreboard players reset #MWL
