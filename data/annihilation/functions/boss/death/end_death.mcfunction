#loot
execute store result score #anniR_global anniR_checkMobLoot run gamerule doMobLoot

execute if score #anniR_global anniR_checkMobLoot matches 1 run fill ^ ^ ^5 ^ ^1 ^5 air destroy
execute if score #anniR_global anniR_checkMobLoot matches 1 if score #anniR_global anniR_difficulty matches 0 run setblock ^ ^ ^5 chest[facing=east]{LootTable:"annihilation:vanillia_loot"}
execute if score #anniR_global anniR_checkMobLoot matches 1 if score #anniR_global anniR_difficulty matches 1 run setblock ^ ^ ^5 chest[facing=east]{LootTable:"annihilation:modded_loot"}
execute if score #anniR_global anniR_checkMobLoot matches 1 if score #anniR_global anniR_difficulty matches 2 run setblock ^ ^ ^5 chest[facing=east]{LootTable:"annihilation:heavy_modded_loot"}

execute if score #anniR_global anniR_checkMobLoot matches 1 run summon item ^ ^1 ^5 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Corrupted Trophy","color":"#45098a","bold":true,"italic":false}',Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'{"text":"Corrupted Trophy","color":"#45098a","bold":true,"italic":false}'},CustomModelData:167808}}}


execute if score @s anniR_struct_spawned matches 1 run function annihilation:boss_summoner/summon

bossbar remove annihilation_bossbar
bossbar remove annihilation_newsun_comp

function animated_java:annihilation_recreated/remove/this