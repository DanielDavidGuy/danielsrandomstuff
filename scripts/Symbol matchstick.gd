extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "matchstick"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Matchstick"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Transforms<end> into <icon_fire> after <text_color_keyword><value_1><end> spins."
	localized_descriptions = {}
	values = [6]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "times_displayed"}]}}
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": values[0], "var_math": [
					{"-": "times_displayed"},
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "shake",
			"sfx_override": "sizzle",
			"value_to_change": "type", 
			"diff": "fire"
		}
	]