execute if score #anniR_global anniR_difficulty matches 0 run summon blaze ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:15f,Tags:["anni_immune","anni_summoned"],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:12},{Name:generic.armor_toughness,Base:2},{Name:generic.attack_knockback,Base:6},{Name:generic.follow_range,Base:130}]}
execute if score #anniR_global anniR_difficulty matches 1 run summon blaze ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:25f,Tags:["anni_immune","anni_summoned"],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:16},{Name:generic.armor_toughness,Base:2},{Name:generic.attack_knockback,Base:7},{Name:generic.follow_range,Base:130}]}
execute if score #anniR_global anniR_difficulty matches 2 run summon blaze ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:45f,Tags:["anni_immune","anni_summoned"],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:20},{Name:generic.armor_toughness,Base:2},{Name:generic.attack_knockback,Base:8},{Name:generic.follow_range,Base:130}]}

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=blaze,tag=anni_immune,tag=anni_summoned,distance=0,limit=1,sort=nearest]