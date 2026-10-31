extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "jimbo_the_joker"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Jimbo the Joker"
	localized_names = {}
	description = """If there are <text_color_keyword><value_2><end> or fewer <group_suit> and <last_suit>, <group_poker> and <last_poker> give <text_color_keyword><value_1>x<end> more <icon_coin>.
	
	<color_D3D3D3>I'm literally a fool, what's your excuse?<end>"""
	localized_descriptions = {}
	values = [4, 5]
	manually_destroyable = false
	rarity = "very_rare"
	groups = []
	sfx = []
	effects = [
		{
			"push_front": true,
			"comparisons": [
				{"a": {"starting_value": 0, "var_math": [
					{"+": {"counted_symbols": "clubs"}},
					{"+": {"counted_symbols": "spades"}},
					{"+": {"counted_symbols": "hearts"}},
					{"+": {"counted_symbols": "diamonds"}},
				]}, "b": values[1], "less_than_eq": true},
			],
			"value_to_change": "saved_values",
			"value_num": 2,
			"diff": 1,
			"overwrite": true
		},
		{
			"last": true,
			"value_to_change": "saved_values",
			"value_num": 2,
			"diff": 0,
			"overwrite": true
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "poker"},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}, "target_self": true}, "b": 1},
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]