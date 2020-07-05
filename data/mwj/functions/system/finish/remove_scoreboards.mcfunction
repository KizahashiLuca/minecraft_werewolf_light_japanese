###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Remove Variables for Game
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove NUM
scoreboard objectives remove PrevNumOfPlayers
scoreboard objectives remove ROLE
scoreboard objectives remove PREV_ROLE
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
scoreboard objectives remove NumOfCats
scoreboard objectives remove NumOfMasons
scoreboard objectives remove NumOfDetectives
scoreboard objectives remove NumOfThieves
scoreboard objectives remove NumOfFoxes
## Remove Variables for Mason Number
scoreboard objectives remove MASON_PAIR
scoreboard objectives remove MASON_PAIR_NUM
## Remove Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives remove ROLE_OF_NUM
scoreboard objectives remove TORCH
scoreboard objectives remove REMOVED_TORCH
scoreboard objectives remove DONE
scoreboard objectives remove 10
scoreboard objectives remove PAGE_NUMER
scoreboard objectives remove PAGE_DENOM
scoreboard objectives remove ROLE_PAGE
scoreboard objectives remove ROLE_PAGE_NUM
scoreboard objectives remove ROLE_TARGET
scoreboard objectives remove ROLE_R_PAGE
scoreboard objectives remove ROLE_L_PAGE
scoreboard objectives remove ROLE_BUTTON
#### Fox
scoreboard objectives remove STRAY_BY_FOX
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
scoreboard objectives remove STRAY_BY_CAT
## Remove Variables for Items
scoreboard objectives remove SNEAKTIME
#### Snowball
scoreboard objectives remove SNOWBALL
#### Trident
scoreboard objectives remove THROW_TRIDENT
#### Mines
scoreboard objectives remove DROP_CONDUIT
#### Honey block
scoreboard objectives remove HoneyBottleCount
scoreboard objectives remove DROP_HONEY_BLOCK
#### Soul lantern
scoreboard objectives remove TeleporterNum
scoreboard objectives remove TeleporterPosX
scoreboard objectives remove TeleporterPosY
scoreboard objectives remove TeleporterPosZ
scoreboard objectives remove DROP_SOULLANTERN
scoreboard objectives remove DROP_LANTERN

## Remove Variables for Kill Log
scoreboard objectives remove DEATH
scoreboard objectives remove KILLER
scoreboard objectives remove VICTIM
scoreboard objectives remove KILLER_NUM
scoreboard objectives remove VICTIM_NUM
scoreboard objectives remove VICTIM_FLAG
scoreboard objectives remove KILLER_FLAG
scoreboard objectives remove KILLLOG_NUM
scoreboard objectives remove KILLLOG_FOX
scoreboard objectives remove KILLLOG_CAT
## Remove Variables for Role Addition
scoreboard objectives remove AddedRole
scoreboard objectives remove AddedWolf
scoreboard objectives remove AddedMadman
scoreboard objectives remove AddedFox
scoreboard objectives remove AddedVilla
scoreboard objectives remove AddedSeer
scoreboard objectives remove AddedMedium
scoreboard objectives remove AddedMason
scoreboard objectives remove AddedDetec
scoreboard objectives remove AddedThief
scoreboard objectives remove AddedCat
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
## Remove Variables for ROLE
scoreboard objectives remove DENOMINATOR
## Remove Variables for Item
scoreboard objectives remove TENS_DIGIT
scoreboard objectives remove ONES_DIGIT
scoreboard objectives remove TEMP_DIGIT
## Remove Players
scoreboard players reset @a
scoreboard players reset #MWL
