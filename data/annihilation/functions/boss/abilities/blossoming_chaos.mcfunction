scoreboard players set @s anniR_abilityCooldown 80
data modify entity @e[type=item_display,tag=aj.annihilation_recreated.bone.sigil,limit=1,distance=..16,sort=nearest] item.id set value "minecraft:nether_brick"
data merge entity @e[type=item_display,tag=aj.annihilation_recreated.bone.sigil,limit=1,distance=..32,sort=nearest] {brightness:{sky:15,block:15}}

playsound minecraft:entity.ravager.roar hostile @a[distance=..70] ~ ~ ~ 4
playsound minecraft:block.respawn_anchor.set_spawn hostile @a[distance=..70] ~ ~ ~ 4

#summon
execute positioned ^-1 ^1 ^70 run function annihilation:boss/summons/infernal_subjugate

execute positioned ^-2 ^ ^10 run function annihilation:boss/summons/magma_hulk
execute positioned ^2 ^ ^10 run function annihilation:boss/summons/magma_hulk

execute positioned ^-4 ^ ^15 run function annihilation:boss/summons/bighorn_devil
execute positioned ^ ^ ^15 run function annihilation:boss/summons/bighorn_devil
execute positioned ^4 ^ ^15 run function annihilation:boss/summons/bighorn_devil

execute positioned ^-7 ^ ^10 run function annihilation:boss/summons/mayhem_imp
execute positioned ^7 ^ ^10 run function annihilation:boss/summons/mayhem_imp