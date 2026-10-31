extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "remover"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Remover"
	localized_names = {}
	value = 0
	description = "Has a <text_color_keyword><value_1>%<end> chance to <text_color_keyword>remove<end> an adjacent symbol. <text_color_keyword>Destroys<end> itself after <text_color_keyword><value_2><end> spins. Cannot be <text_color_keyword>removed<end>."
	localized_descriptions = {}
	values = [10, 33]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "times_displayed"}]}}
	rarity = "none"
	groups = []
	sfx = []
	effects = [	
		{
			"effect_type": "rand_adjacent_symbol",
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}}, "b": values[0], "less_than_eq": true},
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "rotate",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "hex"
		},
		{
			"comparisons": [
				{"a": {"starting_value": values[1]-1, "var_math": [
					{"-": "times_displayed"},
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "shake",
			"sfx_override": "growhit",
			"value_to_change": "destroyed", 
			"diff": true
		}
	]