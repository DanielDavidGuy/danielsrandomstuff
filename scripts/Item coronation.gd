extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "coronation"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Coronation"
	localized_names = {}
	description = "<icon_checkers_piece> give <icon_coin><color_FBF236><value_1><end> more. <icon_checkers_piece> that permanently give <icon_coin><color_FBF236>4<end> or more <text_color_keyword>transform<end> into <icon_checkers_king>."
	localized_descriptions = {}
	values = [1]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "checkers_piece"}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		}
	]