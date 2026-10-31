extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "final_boss_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Final Boss"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if at least <text_color_keyword><value_1><end> <group_monster> or <last_monster> were <text_color_keyword>destroyed<end> this game and at least <text_color_keyword><value_2><end> <group_raremon> or <last_raremon> was <text_color_keyword>destroyed<end> this game. When <text_color_keyword>destroyed<end>, <group_bosslikes> and <last_bosslikes> give <text_color_keyword><value_3>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [10, 1, 3]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"destroyed_symbol_group_count": "monster"}, "b": values[0], "greater_than_eq": true},
				{"a": {"destroyed_symbol_group_count": "raremon"}, "b": values[1], "greater_than_eq": true},
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "bosslikes", "multiplier": values[2]}
		},
	]