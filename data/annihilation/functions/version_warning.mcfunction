#I hate that I have to create a new file just for this
tellraw @a [{"text":"[Annihilation Recreated] Structure need to be re-loaded ! ","color":"gray","underlined":false},{"text":"[reload]","color":"green","underlined":false,"clickEvent":{"action":"run_command","value":"/function annihilation:admin/reset/structure"}},{"text":" ","color":"gray","underlined":false},{"text":"[don't reload]","color":"red","underlined":false,"hoverEvent":{"action":"show_text","value":[{"text":"never show this text again"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set #anniR_load anniR_structureVersion 1"}}]