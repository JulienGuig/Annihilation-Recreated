execute if entity @s[tag=aj.annir_head.root] run function animated_java:annir_head/zzzzzzzz/animations/cleasing_inferno/apply_frame_as_root
execute if entity @s[tag=!aj.annir_head.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:annir_head/animations/cleasing_inferno/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]