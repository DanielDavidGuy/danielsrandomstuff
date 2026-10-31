extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "menu"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Menu"
	localized_names = {}
	value = 0
	description = "<group_food> and <last_food> give <text_color_keyword><value_1>x<end> more <icon_coin> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "destroyed", "b": true},
				{"a": "groups", "b": "food"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"required_items": ["candied_pieces"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "destroyed", "b": true},
				{"a": "groups", "b": "chessall"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]