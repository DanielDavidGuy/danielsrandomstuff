extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "gelatin_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Gelatin"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <group_slime> or <last_slime>. When <text_color_keyword>destroyed<end> <group_slime> and <last_slime> give <icon_coin><color_FBF236><value_2><end> more this game."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math": [
					{"+": {"counted_symbols": "slime_blue"}},
					{"+": {"counted_symbols": "slime_gold"}},
					{"+": {"counted_symbols": "slime_gray"}},
					{"+": {"counted_symbols": "slime_green"}},
					{"+": {"counted_symbols": "slime_king"}},
					{"+": {"counted_symbols": "slime_pink"}},
					{"+": {"counted_symbols": "slime_purple"}},
					{"+": {"counted_symbols": "slime_red"}},
				]}, "b": values[0], "greater_than_eq": true}
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
			"diff": {"groups": "slime", "bonus": values[1]}
		}
	]