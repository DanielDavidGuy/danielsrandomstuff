extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "hammer"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Hammer"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <icon_wood> and <icon_rock>. <text_color_keyword>Adds<end> <icon_house> for <text_color_keyword>destroying<end> <icon_wood>. <text_color_keyword>Adds<end> <icon_tower> for <text_color_keyword>destroying<end> <icon_rock>. <text_color_keyword>Destroys<end> itself after <text_color_keyword>destroying <value_1><end> symbols."
	localized_descriptions = {}
	values = [3]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "wood"},
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1,
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "wood"},
			],
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"value_to_change": "destroyed",
			"diff": true,
			"tiles_to_add": [
				{"type": "house"}
			]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock"}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1,
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock"}
			],
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"value_to_change": "destroyed",
			"diff": true,
			"tiles_to_add": [
				{"type": "tower"}
			]
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[0], "greater_than_eq": true, "target_self": true}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "rockroll"
		}
	]