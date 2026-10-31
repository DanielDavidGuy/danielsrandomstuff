extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "balloon"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Balloon"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> for each row below it. <text_color_keyword>Destroys<end> itself on the top row."
	localized_descriptions = {}
	values = [1]
	rarity = "common"
	groups = ["monkeylikes", "windweak", "gravity_low"]
	sfx = []
	effects = [
		{
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 3, "var_math": [
				{"-": "grid_position_y"},
				{"*": values[0]}
			]}
		},
		{
			"comparisons": [
				{"a": "grid_position_y", "b": 0}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "pop"
		}
	]