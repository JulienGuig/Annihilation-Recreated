execute if score @s aj.annir_apocalpytic_sigil.animation.turn.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/turn/end_loop
execute if score @s aj.annir_apocalpytic_sigil.animation.turn.loop_mode = $aj.loop_mode.once aj.i run function animated_java:annir_apocalpytic_sigil/animations/turn/stop
execute if score @s aj.annir_apocalpytic_sigil.animation.turn.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:annir_apocalpytic_sigil/animations/turn/pause