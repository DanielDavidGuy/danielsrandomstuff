extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "jimbo_the_joker_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Jimbo the Joker"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <text_color_keyword><value_1><end> or more <group_poker> or <last_poker> are adjacent. When <text_color_keyword>destroyed<end>, <group_poker> and <last_poker> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [5, 2]
	manually_destroyable = false
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"counted_adjacent_symbols": {"groups": "poker"}}, "b": values[0], "greater_than_eq": true},
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
			"diff": {"groups": "poker", "multiplier": values[1]}
		},
	]