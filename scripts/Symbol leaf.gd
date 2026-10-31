extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "leaf"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Leaf"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> for each row above it. <text_color_keyword>Destroys<end> itself on the bottom row."
	localized_descriptions = {}
	values = [1]
	rarity = "common"
	groups = ["flammable", "windweak", "gravity_high", "farmerlikes", "trash", "oakadds"]
	sfx = []
	effects = [
		{
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math": [
				{"+": "grid_position_y"},
				{"*": values[0]}
			]}
		},
		{
			"comparisons": [
				{"a": "grid_position_y", "b": 3}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "farmer"
		}
	]