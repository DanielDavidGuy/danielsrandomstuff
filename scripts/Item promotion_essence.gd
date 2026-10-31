extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "promotion_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Promotion"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <icon_pawn>. When <text_color_keyword>destroyed<end>, <icon_pawn> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [8, 8]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"counted_symbols": "pawn"}}, "b": values[0], "greater_than_eq": true},
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			# Replace with type when behavior gets fixed
			"diff": {"groups": "pawns", "multiplier": values[1]}
		},
	]