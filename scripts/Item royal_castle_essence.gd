extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "royal_castle_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Royal Castle"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if at least <text_color_keyword>1<end> <group_royal> or <last_royal> gives <icon_coin><color_FBF236><value_1><end> or more. When <text_color_keyword>destroyed<end>, <group_royal> and <last_royal> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [12, 2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "royal"},
				{"a": "final_value", "b": values[0], "greater_than_eq": true}
			],
			"item_to_destroy": "royal_castle_essence"
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"last": true,
			"add_to_array": true,
			"diff": {"groups": "royal", "multiplier": values[1]}
		}
	]