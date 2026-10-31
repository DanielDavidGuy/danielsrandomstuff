extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "sleigh_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sleigh"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <group_sleighlikes> or <last_sleighlikes>. When <text_color_keyword>destroyed<end> <group_sleighlikes> or <last_sleighlikes> give <text_color_keyword><value_2>x<end> more <icon_coin>, and <group_frostburn> and <last_frostburn> last for <text_color_keyword><value_3><end> additional spins this game."
	localized_descriptions = {}
	values = [5, 1.5, 4]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math": [
					{"+": {"counted_symbols": "snow"}},
					{"+": {"counted_symbols": "snowball"}},
					{"+": {"counted_symbols": "ice_block"}},
					{"+": {"counted_symbols": "snowman"}},
					{"+": {"counted_symbols": "frosty"}},
					{"+": {"counted_symbols": "yeti"}},
					{"+": {"counted_symbols": "christmas_tree"}},
					{"+": {"counted_symbols": "present"}},
					{"+": {"counted_symbols": "peppermint"}},
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
			"diff": {"groups": "sleighlikes", "multiplier": values[1]}
		},
	]