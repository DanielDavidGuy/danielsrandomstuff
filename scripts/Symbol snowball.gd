extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "snowball"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Snowball"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> itself after giving <icon_coin> <text_color_keyword><value_2> times<end>. When there is <icon_snowball> below itself, <text_color_keyword>combines<end> with it to make <icon_snowman>."
	localized_descriptions = {}
	values = [2, 12]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "times_coins_given"}, {"+": "saved_value"},{"+": {"var_math": [{"+": {"counted_items": "sleigh"}},{"+": {"counted_destroyed_items": "sleigh_essence"}},{"*": 4}]}}]}}
	rarity = "common"
	groups = ["snowy", "frostburn", "sleighlikes", "waterbend", "icelikes"]
	sfx = ["beam"]
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": values[1]-1, "var_math": [
					{"-": "times_coins_given"}, 
					{"+": "saved_value"},
					{"+": {"var_math": [
						{"+": {"counted_items": "sleigh"}},
						{"+": {"counted_destroyed_items": "sleigh_essence"}},
						{"*": 4}
					]}}
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "circle",
			"sfx_override": "beam",
			"value_to_change": "destroyed", 
			"diff": true
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "snowball", "not_prev": true}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "less_than": true}
			],
			"target_self": true,
			"push_front": true,
			"value_to_change": "type",
			"diff": "snowman",
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding",
			"one_time": true
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "snowball", "not_prev": true}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "less_than": true}
			],
			"value_to_change": "removed",
			"diff": true,
			"not_prev": true
		},
	]