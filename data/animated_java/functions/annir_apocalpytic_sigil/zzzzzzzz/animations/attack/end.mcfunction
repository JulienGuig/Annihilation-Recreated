execute if score @s aj.annir_apocalpytic_sigil.animation.attack.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/attack/end_loop
execute if score @s aj.annir_apocalpytic_sigil.animation.attack.loop_mode = $aj.loop_mode.once aj.i run function animated_java:annir_apocalpytic_sigil/animations/attack/stop
execute if score @s aj.annir_apocalpytic_sigil.animation.attack.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:annir_apocalpytic_sigil/animations/attack/pause