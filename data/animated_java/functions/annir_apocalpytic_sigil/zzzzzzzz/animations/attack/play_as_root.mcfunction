scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.annir_apocalpytic_sigil.animation.attack.local_anim_time 0
scoreboard players set @s aj.annir_apocalpytic_sigil.animation.attack.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/attack/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.annir_apocalpytic_sigil.animation.attack