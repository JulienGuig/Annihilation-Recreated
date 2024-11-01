execute if score #anniR_global anniR_difficulty matches 0 run summon slime ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Size:0,Tags:["anni_immune","anni_summoned"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Passengers:[{id:"minecraft:enderman",NoGravity:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:90f,Tags:["anni_immune","anni_summoned"],ActiveEffects:[{Id:12,Amplifier:5b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:90}],Passengers:[{id:"minecraft:end_crystal",HasVisualFire:0b,Invulnerable:1b,Glowing:0b,ShowBottom:0b,Tags:["anni_immune","anni_regen"]}]}]}
execute if score #anniR_global anniR_difficulty matches 1 run summon slime ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Size:0,Tags:["anni_immune","anni_summoned"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Passengers:[{id:"minecraft:enderman",NoGravity:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:120f,Tags:["anni_immune","anni_summoned"],ActiveEffects:[{Id:12,Amplifier:5b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:120}],Passengers:[{id:"minecraft:end_crystal",HasVisualFire:0b,Invulnerable:1b,Glowing:0b,ShowBottom:0b,Tags:["anni_immune","anni_regen"]}]}]}
execute if score #anniR_global anniR_difficulty matches 2 run summon slime ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Size:0,Tags:["anni_immune","anni_summoned"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Passengers:[{id:"minecraft:enderman",NoGravity:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:180f,Tags:["anni_immune","anni_summoned"],ActiveEffects:[{Id:12,Amplifier:5b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:180}],Passengers:[{id:"minecraft:end_crystal",HasVisualFire:0b,Invulnerable:1b,Glowing:0b,ShowBottom:0b,Tags:["anni_immune","anni_regen"]}]}]}

execute as @e[type=end_crystal,limit=1,distance=..3,tag=anni_immune,tag=anni_regen,sort=nearest] store result entity @s BeamTarget.X double 1 run data get entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..90,limit=1] Pos[0]
execute as @e[type=end_crystal,limit=1,distance=..3,tag=anni_immune,tag=anni_regen,sort=nearest] store result entity @s BeamTarget.Y double 1 run data get entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..90,limit=1] Pos[1]
execute as @e[type=end_crystal,limit=1,distance=..3,tag=anni_immune,tag=anni_regen,sort=nearest] store result entity @s BeamTarget.Z double 1 run data get entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..90,limit=1] Pos[2]

execute store result score #anniR_global anniR_checkMobGrief run gamerule mobGriefing
execute if score #anniR_global anniR_checkMobGrief matches 1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:netherrack destroy
execute if score #anniR_global anniR_checkMobGrief matches 1 run fill ~-1 ~3 ~-1 ~1 ~ ~1 minecraft:air destroy

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=slime,tag=anni_immune,tag=anni_summoned,distance=..1,limit=1,sort=nearest]
execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=enderman,tag=anni_immune,tag=anni_summoned,distance=..2,limit=1,sort=nearest]
execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=end_crystal,tag=anni_immune,distance=..3,limit=1,sort=nearest]