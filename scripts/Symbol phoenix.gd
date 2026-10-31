extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "phoenix"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Phoenix"
	localized_names = {}
	value = 6
	description = "<text_color_keyword>Destroys<end> itself after giving <icon_coin> <text_color_keyword><value_2> times<end>. <text_color_keyword>Transforms<end> adjacent <group_flammable> and <last_flammable> into <icon_fire>. When <text_color_keyword>destroyed<end>, <text_color_keyword>adds<end> <icon_orange_feather>, and <icon_phoenix> give <color_FBF236><icon_coin><value_1><end> more this game."
	localized_descriptions = {}
	values = [3, 6]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "times_coins_given"}]}}
	rarity = "very_rare"
	groups = ["bird", "organism", "animal", "uncommonanimals", "phoenixlikes"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": values[1]-1, "var_math": [
					{"-": "times_coins_given"},
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "shake",
			"sfx_override": "aaaaa",
			"value_to_change": "destroyed", 
			"diff": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "flammable"}
			],
			"value_to_change": "type", 
			"diff": "fire",
			"anim": "circle",
			"one_time": true,
			"anim_targets": "adjacent_symbol",
			"sfx_override": "sizzle",
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "orange_feather"}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			# Replace with type when behavior gets fixed
			"diff": {"groups": "phoenixlikes", "bonus": values[0]},
		},
	]