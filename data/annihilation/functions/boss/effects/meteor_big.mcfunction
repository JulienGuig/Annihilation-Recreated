particle explosion_emitter ~ ~ ~
playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=anni_target,limit=1] 40 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 30 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 30 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 30 annihilation:metor_big by @s

execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=anni_target,limit=1] 50 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 annihilation:metor_big by @s

execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=anni_target,limit=1] 65 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 55 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 55 annihilation:metor_big by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 55 annihilation:metor_big by @s

#buffed
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=anni_target,limit=1] 45 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 annihilation:metor_big by @s

execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=anni_target,limit=1] 55 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 45 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 45 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 45 annihilation:metor_big by @s

execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=anni_target,limit=1] 70 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 65 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 65 annihilation:metor_big by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 65 annihilation:metor_big by @s

kill @e[type=armor_stand,tag=anni_meteor_b,distance=..1,limit=1,sort=nearest]