extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "angler_fish"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Angler Fish"
	localized_names = {}
	value = -2
	description = "Gives <icon_coin><color_FBF236><value_1><end> for each row above it."
	localized_descriptions = {}
	values = [4]
	rarity = "rare"
	groups = ["organism", "animal", "aqua", "gravity_high", "uncommonanimals"]
	sfx = []
	effects = [
		{
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math": [
				{"+": "grid_position_y"},
				{"*": values[0]}
			]}
		}
	]