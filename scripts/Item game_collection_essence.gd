extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "game_collection_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Game Collection"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <group_game> and <last_game>. When <text_color_keyword>destroyed<end>, <group_game> and <last_game> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [7, 1.5]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math": [
					{"+": {"counted_symbols": "d3"}},
					{"+": {"counted_symbols": "d5"}},
					{"+": {"counted_symbols": "card"}},
					{"+": {"counted_symbols": "rook"}},
					{"+": {"counted_symbols": "pawn"}},
					{"+": {"counted_symbols": "chess_queen"}},
					{"+": {"counted_symbols": "chess_knight"}},
					{"+": {"counted_symbols": "chess_king"}},
					{"+": {"counted_symbols": "bishop"}},
					{"+": {"counted_symbols": "coin"}},
					{"+": {"counted_symbols": "diamonds"}},
					{"+": {"counted_symbols": "hearts"}},
					{"+": {"counted_symbols": "clubs"}},
					{"+": {"counted_symbols": "spades"}},
					{"+": {"counted_symbols": "top"}},
					{"+": {"counted_symbols": "checkers_king"}},
				]}, "b": values[0], "greater_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "game", "multiplier": values[1]}
		}
	]