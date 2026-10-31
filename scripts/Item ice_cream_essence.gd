extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "ice_cream_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Ice Cream"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself when <icon_snow_globe> or <icon_christmas_tree> is adjacent to <group_frostburn> or <last_frostburn>. When <text_color_keyword>destroyed<end>, <group_frostburn> and <last_frostburn> give <icon_coin><color_FBF236><value_1><end> more this game."
	localized_descriptions = {}
	values = [2]
	rarity = "essence"
	groups = []
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "frostburn", "bonus": values[0]}
		}
	]