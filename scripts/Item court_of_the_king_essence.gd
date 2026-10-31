extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "court_of_the_king_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Court of the King"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there is <text_color_keyword>1<end> of each of the following: <icon_pawn> <icon_chess_knight> <icon_bishop> <icon_rook> <icon_chess_queen> and <icon_chess_king>. When <text_color_keyword>destroyed<end> <group_chessall> and <last_chessall> give <text_color_keyword><value_1>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [3]
	manually_destroyable = false
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"counted_symbols": "pawn"}}, "b": 1, "greater_than_eq": true},
				{"a": {"starting_value": {"counted_symbols": "chess_knight"}}, "b": 1, "greater_than_eq": true},
				{"a": {"starting_value": {"counted_symbols": "bishop"}}, "b": 1, "greater_than_eq": true},
				{"a": {"starting_value": {"counted_symbols": "rook"}}, "b": 1, "greater_than_eq": true},
				{"a": {"starting_value": {"counted_symbols": "chess_queen"}}, "b": 1, "greater_than_eq": true},
				{"a": {"starting_value": {"counted_symbols": "chess_king"}}, "b": 1, "greater_than_eq": true},
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
			"diff": {"groups": "chessall", "multiplier": values[0]}
		}
	]