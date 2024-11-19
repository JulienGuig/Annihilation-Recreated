execute if score #anniR_global anniR_difficulty matches 0 run summon piglin_brute ~ ~1 ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:25f,IsImmuneToZombification:1b,Tags:["anni_immune","upgradedmobs.blacklist","anni_summoned"],HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}]}},{id:"minecraft:netherite_axe",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:tide"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:raiser"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],active_effects:[{id:"minecraft:fire_resistance",amplifier:5b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.knockback_resistance,Base:8},{Name:generic.movement_speed,Base:0.22},{Name:generic.attack_damage,Base:23},{Name:generic.armor_toughness,Base:3},{Name:generic.attack_knockback,Base:2},{Name:generic.follow_range,Base:100},{Name:generic.armor,Base:8}]}
execute if score #anniR_global anniR_difficulty matches 1 run summon piglin_brute ~ ~1 ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:37f,IsImmuneToZombification:1b,Tags:["anni_immune","upgradedmobs.blacklist","anni_summoned"],HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}]}},{id:"minecraft:netherite_axe",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:tide"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:raiser"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],active_effects:[{id:"minecraft:fire_resistance",amplifier:5b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:37},{Name:generic.knockback_resistance,Base:8},{Name:generic.movement_speed,Base:0.22},{Name:generic.attack_damage,Base:30},{Name:generic.armor_toughness,Base:3},{Name:generic.attack_knockback,Base:2},{Name:generic.follow_range,Base:100},{Name:generic.armor,Base:12}]}
execute if score #anniR_global anniR_difficulty matches 2 run summon piglin_brute ~ ~1 ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,IsImmuneToZombification:1b,Tags:["anni_immune","upgradedmobs.blacklist","anni_summoned"],HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}]}},{id:"minecraft:netherite_axe",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:tide"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:raiser"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],active_effects:[{id:"minecraft:fire_resistance",amplifier:5b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:8},{Name:generic.movement_speed,Base:0.22},{Name:generic.attack_damage,Base:48},{Name:generic.armor_toughness,Base:3},{Name:generic.attack_knockback,Base:2},{Name:generic.follow_range,Base:100},{Name:generic.armor,Base:18}]}

damage @e[type=piglin_brute,limit=1,distance=0,tag=anni_immune] 0 mob_attack by @e[tag=anni_target,distance=..128,limit=1]

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=piglin_brute,tag=anni_immune,tag=anni_summoned,distance=0,limit=1,sort=nearest]