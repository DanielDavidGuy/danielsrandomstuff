extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "gelatin"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Gelatin"
	localized_names = {}
	description = "<group_slime> and <last_slime> give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [1]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "slime"}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		}
	]