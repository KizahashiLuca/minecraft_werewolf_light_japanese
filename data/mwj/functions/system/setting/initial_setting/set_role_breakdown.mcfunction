###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Count Players
execute as @a run scoreboard players add Time NUM 1

## Add & Set the Objectives
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
scoreboard players set Time WOLF 0
scoreboard players set Time MADMAN 0
scoreboard players set Time VILLAGER 0
scoreboard players set Time SEER 0
scoreboard players set Time MEDIUM 0
scoreboard players set Time CAT 0
scoreboard players set Time MASON 0
scoreboard players set Time DETECTIVE 0
scoreboard players set Time FOX 0

## Decision Role Breakdown of Wolf
scoreboard players operation Time WOLF = Time NUM
scoreboard players add Time WOLF 5
scoreboard players set Time DENOMINATOR 5
scoreboard players operation Time WOLF /= Time DENOMINATOR

## Decision Role Breakdown of Madman
scoreboard players operation Time MADMAN = Time NUM
scoreboard players remove Time MADMAN 1
scoreboard players set Time DENOMINATOR 6
scoreboard players operation Time MADMAN /= Time DENOMINATOR

## Decision Role Breakdown of Seer
scoreboard players operation Time SEER = Time NUM
scoreboard players add Time SEER 5
scoreboard players set Time DENOMINATOR 10
scoreboard players operation Time SEER /= Time DENOMINATOR

## Decision Role Breakdown of Medium
scoreboard players operation Time MEDIUM = Time NUM
scoreboard players add Time MEDIUM 4
scoreboard players set Time DENOMINATOR 10
scoreboard players operation Time MEDIUM /= Time DENOMINATOR

## Decision Role Breakdown of Villager
scoreboard players operation Time VILLAGER = Time NUM
scoreboard players operation Time VILLAGER -= Time WOLF
scoreboard players operation Time VILLAGER -= Time MADMAN
scoreboard players operation Time VILLAGER -= Time SEER
scoreboard players operation Time VILLAGER -= Time MEDIUM

## Remove Scoreboard
scoreboard objectives remove DENOMINATOR