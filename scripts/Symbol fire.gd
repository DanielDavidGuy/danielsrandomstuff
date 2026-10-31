extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "fire"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Fire"
	localized_names = {}
	value = 3
	description = "<text_color_keyword>Transforms<end> into <icon_ash> after giving <icon_coin> <text_color_keyword><value_1> times<end>. <text_color_keyword>Destroys<end> adjacent <group_flammable> and <last_flammable>. Adjacent <group_frostburn> and <last_frostburn> <text_color_keyword>become<end> <icon_puddle>. Adjacent <icon_stick> <text_color_keyword>become<end> <icon_campfire>."
	localized_descriptions = {}
	values = [6, 10]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "times_coins_given"}, {"+": {"var_math": [{"+": {"counted_items": "bonfire"}},{"*": 12}]}}]}}
	rarity = "uncommon"
	groups = ["firebend", "waterweak", "omelettestuff", "eachother", "cavelikes", "fires"]
	sfx = ["sizzle"]
	effects = [
		{
			"forbidden_items": ["bonfire"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "flammable"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"one_time": true,
			"anim_targets": "adjacent_symbol",
			"sfx_override": "sizzle",
			"item_to_destroy": "oxygen_gas_essence"
		},
		{
			"forbidden_items": ["bonfire"],
			"required_items": ["oxygen_gas"],
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "flammable"}, 
				{"a": "tbd", "b": true},
				{"a": "type", "b": "fire", "not": true},
				{"a": "type", "b": "ash", "not": true},
				{"a": "destroyed", "b": false, "target_self": true},
			], 
			"tiles_to_add": [
				{"type": "fire"}
			],
			"one_time": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "frostburn"}
			],
			"value_to_change": "type",
			"diff": "puddle",
			"anim": "circle",
			"one_time": true,
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beam",
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "stick"}
			],
			"value_to_change": "type",
			"diff": "campfire",
			"anim": "circle",
			"one_time": true,
			"anim_targets": "adjacent_symbol",
			"sfx_override": "sizzle",
		},
		{
			"comparisons": [
				{"a": {"starting_value": values[0]-1, "var_math": [
					{"-": "times_coins_given"},
					{"+": {"var_math": [
						{"+": {"counted_items": "bonfire"}},
						{"*": 12}
					]}}
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "shake",
			"sfx_override": "rockroll",
			"value_to_change": "type", 
			"diff": "ash",
			"item_to_destroy": "bonfire_essence"
		},
		{
			"effect_type": "adjacent_symbols",
			"required_items": ["furnace"],
			"comparisons": [
				{"a": "type", "b": "coal"}
			],
			"value_to_change": "value_multiplier",
			"diff": 2
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "candle_unlit"},
				{"a": "type", "b": "candle_lit", "not": true},
			],
			"value_to_change": "type",
			"diff": "candle_lit",
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "sizzle",
		},
	]