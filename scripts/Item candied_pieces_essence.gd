extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "candied_pieces_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Candied Pieces"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <icon_toddler> or <icon_chef> is adjacent to <group_chessall> or <last_chessall>. When <text_color_keyword>destroyed<end>, <group_chessall> and <last_chessall> give <text_color_keyword><value_1>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [1.5]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "chessall", "multiplier": values[0]}
		}
	]