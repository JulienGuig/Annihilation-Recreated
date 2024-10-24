#sound
execute if score #anniR_global anniR_boss_summoner matches 0 run execute if entity @p[predicate=annihilation:check_netherstar,distance=..8] positioned 212 -39 -1291.05 run playsound minecraft:block.end_portal_frame.fill block @a[distance=..90] ~ ~ ~ 10
execute if score #anniR_global anniR_boss_summoner matches 1..2 run execute if entity @p[predicate=annihilation:check_netherite,distance=..8] positioned 212 -39 -1291.05 run playsound minecraft:block.end_portal_frame.fill block @a[distance=..90] ~ ~ ~ 10

#check nether_star
execute if score #anniR_global anniR_boss_summoner matches 0 run execute if entity @p[predicate=annihilation:check_netherstar,distance=..8] run scoreboard players add #anniR_global anniR_boss_summoner 1

#check netherite
execute if score #anniR_global anniR_boss_summoner matches 1..2 run execute if entity @p[predicate=annihilation:check_netherite,distance=..8] run scoreboard players add #anniR_global anniR_boss_summoner 1

#nether star pass
execute if score #anniR_global anniR_boss_summoner matches 1 run clear @p[gamemode=!creative,gamemode=!spectator,distance=..8] nether_star 1
execute if score #anniR_global anniR_boss_summoner matches 1 run data modify entity @e[type=item_display,tag=anni_item,distance=..8,limit=1] item.id set value "minecraft:netherite_ingot"
execute if score #anniR_global anniR_boss_summoner matches 1 run execute at @e[type=item_display,tag=anni_item,limit=1,distance=..8] run summon text_display ~0.05 ~-0.5 ~-0.25 {default_background:0b,see_through:0b,Rotation:[-90F,0F],Tags:["anni_item_count"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"text":"2"}',background:1310720}

#netherite 1 pass
execute if score #anniR_global anniR_boss_summoner matches 2 run clear @p[gamemode=!creative,gamemode=!spectator,distance=..8] netherite_ingot 1
execute if score #anniR_global anniR_boss_summoner matches 2 run kill @e[type=text_display,tag=anni_item_count,distance=..2]

#netherite 2 pass
execute if score #anniR_global anniR_boss_summoner matches 3 run clear @p[gamemode=!creative,gamemode=!spectator,distance=..8] netherite_ingot 1

#kill summoner
execute if score #anniR_global anniR_boss_summoner matches 3 run kill @e[type=interaction,tag=anni_summoner,distance=..8]
execute if score #anniR_global anniR_boss_summoner matches 3 run kill @e[type=item_display,tag=anni_item,distance=..8]

#summon
execute if score #anniR_global anniR_boss_summoner matches 3 run function annihilation:boss_summoner/struct_boss_summon
#execute if score #anniR_global anniR_boss_summoner matches 3 run scoreboard players set #anniR_global anniR_boss_summoner 0

#item passed
execute as @e[type=item_display,tag=anni_item,distance=..8,limit=1] at @s positioned ^ ^1 ^1.5 run function annihilation:boss/effects/sigil_small
execute as @e[type=item_display,tag=anni_item,distance=..8,limit=1] at @s positioned ^ ^1 ^1.5 run function annihilation:boss/effects/sigil_small
execute as @e[type=item_display,tag=anni_item,distance=..8,limit=1] at @s positioned ^ ^1 ^1.5 run function annihilation:boss/effects/sigil_small