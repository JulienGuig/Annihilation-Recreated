scoreboard players add @s aj.annihilation_recreated.animation.rake.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.annihilation_recreated.animation.rake.local_anim_time
function animated_java:annihilation_recreated/zzzzzzzz/animations/rake/apply_frame_as_root
execute if score @s aj.annihilation_recreated.animation.rake.local_anim_time matches 57.. run function animated_java:annihilation_recreated/zzzzzzzz/animations/rake/end