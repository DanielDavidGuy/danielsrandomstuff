extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "eagle"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Eagle"
	localized_names = {}
	value = -2
	description = "Gives <icon_coin><color_FBF236><value_1><end> for each row below it."
	localized_descriptions = {}
	values = [4]
	rarity = "rare"
	groups = ["organism", "animal", "bird", "gravity_low", "uncommonanimals"]
	sfx = []
	effects = [
		{
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 3, "var_math": [
				{"-": "grid_position_y"},
				{"*": values[0]}
			]}
		}
	]