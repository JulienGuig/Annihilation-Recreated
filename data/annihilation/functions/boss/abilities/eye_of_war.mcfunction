playsound minecraft:block.respawn_anchor.set_spawn hostile @a[distance=..50] ~ ~ ~ 3

execute positioned ^-8 ^10 ^13 run function annihilation:boss/summons/burning_irise
execute positioned ^8 ^10 ^13 run function annihilation:boss/summons/burning_irise
execute positioned ^-5 ^10 ^16 run function annihilation:boss/summons/burning_irise
execute positioned ^5 ^10 ^16 run function annihilation:boss/summons/burning_irise
execute positioned ^4 ^10 ^38 run function annihilation:boss/summons/burning_irise
execute positioned ^-4 ^10 ^38 run function annihilation:boss/summons/burning_irise

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[tag=anni_immune,distance=..128]