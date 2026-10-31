extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "checkers_king"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Checkers King"
	localized_names = {}
	value = 6
	description = "<text_color_keyword>Destroys<end> <icon_checkers_piece> that are diagonally adjacent to this symbol. Permanently gives <icon_coin><color_FBF236><value_1><end> for each <icon_checkers_piece> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [2]
	rarity = "none"
	groups = ["checkers", "royal", "game", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": {"var_math": [
					{"+": "grid_position_x"},
					{"-": "grid_position_x", "target_self": true},
					{"+": 0, "abs": true}
				]}, 
				"b": 1}, 
				{"a": {"var_math": [
					{"+": "grid_position_y"},
					{"-": "grid_position_y", "target_self": true},
					{"+": 0, "abs": true}
				]}, 
				"b": 1}, 
				{"a": "type", "b": "checkers_piece"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": {"var_math": [
					{"+": "grid_position_x"},
					{"-": "grid_position_x", "target_self": true},
					{"+": 0, "abs": true}
				]}, 
				"b": 1}, 
				{"a": {"var_math": [
					{"+": "grid_position_y"},
					{"-": "grid_position_y", "target_self": true},
					{"+": 0, "abs": true}
				]}, 
				"b": 1}, 
				{"a": "type", "b": "checkers_piece"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[0]
		},
	]