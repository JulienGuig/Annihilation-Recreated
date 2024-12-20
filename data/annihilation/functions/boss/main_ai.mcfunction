#every command here is executed as root model at the root

#execute commands if the boss has taken damage
execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16,HurtTime:9s},distance=..8,limit=1,sort=nearest] as @s run function annihilation:boss/hurt

#auto-target using the hitbox minecraft target
execute unless entity @e[tag=anni_target,distance=..128] run execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..8,limit=1,sort=nearest] at @s on target run function annihilation:set_target

#make the head stuck to the the model
execute if entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..8,limit=1,sort=nearest] run execute positioned ~ ~9.3125 ~ unless entity @e[type=item_display,tag=aj.annir_head.root,distance=..0.25,limit=1,sort=nearest] run tp @e[type=item_display,tag=aj.annir_head.root,distance=..128,limit=1,sort=nearest] ~ ~ ~

#check if the boss died
execute if score @s anniR_death matches 0 if score @s anniR_despawn matches 0 if score @s anniR_health matches 0 run schedule function annihilation:boss/death/check_death 2
execute if score @s anniR_death matches 0 if score @s anniR_despawn matches 0 if score @s anniR_health matches 0 run scoreboard players set @s anniR_death 1

#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result score @s anniR_health run data get entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..8,limit=1,sort=nearest] Health
execute store result bossbar annihilation_bossbar value run scoreboard players get @s anniR_health
bossbar set annihilation_bossbar name [{"text":"Annihilation","color":"red"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"anniR_health"},"color":"red"},{"text":"❤","color":"dark_red"}]

#face target
execute if entity @e[tag=anni_target,distance=..128,limit=1] run execute if score @s anniR_cleasingAnim matches 0 as @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[tag=anni_target,distance=..128,limit=1]
execute if entity @e[tag=anni_target,distance=..128,limit=1] run execute if score @s anniR_cleasingAnim matches 0 store result score @s anni_pitch run data get entity @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] Rotation[1]
#execute unless entity @e[tag=anni_target,distance=..128,limit=1] run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ -90 32

#attack/ability
#cooldown
execute if entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..8,limit=1,sort=nearest] unless score @s anniR_abilityCooldown matches 0 run scoreboard players remove @s anniR_abilityCooldown 1
execute unless score @s anniR_isBuffed matches 0 if entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..8,limit=1,sort=nearest] unless score @s anniR_abilityCooldown matches 0 if predicate annihilation:random_8 run scoreboard players remove @s anniR_abilityCooldown 1

#execute ability
execute if entity @e[tag=anni_target,distance=..128,limit=1] if entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..8,limit=1,sort=nearest] if score @s anniR_abilityCooldown matches 0 run function annihilation:boss/can_attack
#check ability
#cleasing inferno
#short
execute if score @s anniR_cleasingAnim matches 1 run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-1.75 ~
#bridge
execute if score @s anniR_cleasingAnim matches 2 run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~-0.95
#meteor
execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..8,limit=1,sort=nearest] unless score @s anniR_abilityCooldown matches 0 run function annihilation:boss/effects/check_meteor
#red_ring
execute if entity @e[type=item_display,tag=aj.annir_apocalpytic_sigil.root,limit=1,distance=..128] run execute as @e[type=item_display,tag=aj.annir_apocalpytic_sigil.root,limit=1,distance=..128] at @s run function annihilation:boss/effects/red_ring
#infernal subjugate
execute if entity @e[type=end_crystal,distance=..128,tag=anni_immune,tag=anni_regen] run execute as @e[type=end_crystal,distance=..128,tag=anni_immune,tag=anni_regen] at @s run function annihilation:boss/effects/subjugate_heal
#burning irise
execute if entity @e[type=bat,distance=..128,tag=anni_immune,tag=eye_plat,tag=anni_summoned] run execute as @e[type=bat,distance=..128,tag=anni_immune,tag=eye_plat,tag=anni_summoned] at @s unless entity @e[type=skeleton,distance=..1,limit=1,sort=nearest,tag=anni_immune,tag=anni_summoned] run kill @s
#new sun
execute if score @s anniR_new_sun matches 1..2 run execute if entity @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,tag=anni_summoned,distance=..32] run execute as @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,tag=anni_summoned,distance=..32] at @s run function annihilation:boss/effects/new_sun_check
execute if score @s anniR_death matches 0 if score @s anniR_new_sun matches 1..2 run execute if entity @e[type=magma_cube,limit=1,tag=!anni_hitbox,tag=!anni_immune,tag=!new_sun_hitbox,tag=!anni_summoned,distance=..32,nbt={NoAI:1b}] run kill @e[type=magma_cube,tag=!anni_hitbox,tag=!anni_immune,tag=!new_sun_hitbox,tag=!anni_summoned,distance=..32,nbt={NoAI:1b}]

#check sigil (buff)
execute unless score @s anniR_abilityCooldown matches 0 if score @s anniR_isBuffed matches 0 run data modify entity @e[type=item_display,tag=aj.annir_head.bone.sigil,limit=1,distance=..12,sort=nearest] item.id set value "minecraft:air"