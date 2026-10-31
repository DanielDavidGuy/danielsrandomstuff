extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "court_of_the_king"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Court of the King"
	localized_names = {}
	description = "<group_chessall> and <last_chessall> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	manually_destroyable = false
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "chessall"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]