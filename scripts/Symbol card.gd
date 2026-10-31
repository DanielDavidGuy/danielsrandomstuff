extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "card"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Card"
	localized_names = {}
	value = 0
	description = "<color_E14A68>Transforms<end> into <group_suit> or <last_suit> after <color_E14A68><value_1><end> spins."
	localized_descriptions = {}
	values = [4]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "times_displayed"}]}}
	rarity = "common"
	groups = ["game", "poker"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": values[0], "var_math": [
					{"-": "times_displayed"},
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "circle",
			"sfx_override": "cardshark",
			"value_to_change": "type", 
			"group": "suit"
		}
	]