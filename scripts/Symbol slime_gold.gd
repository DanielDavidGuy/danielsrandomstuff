extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "slime_gold"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Golden Slime"
	localized_names = {}
	value = 0
	description = "Legendary slime. Gives <icon_coin><color_FBF236><value_1><end> <icon_reroll_token><color_49AA10><value_2><end> and <icon_removal_token><color_6B6B6B><value_3><end> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [40, 4, 4]
	rarity = "very_rare"
	groups = ["waterweak", "slime", "organism", "monster", "slimenormal", "box", "bosslikes", "destroymon"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "reroll_token_value",
			"diff": values[1]
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "removal_token_value",
			"diff": values[2]
		},
		{
			"required_items": ["salt_shaker"],
			"value_to_change": "saved_value",
			"diff": {"starting_value": {"rand_num": {"min": 1, "max": 100}}},
			"overwrite": true
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": 30, "greater_than": true}
			],
			"value_to_change": "value_bonus",
			"diff": values[0],
			"anim": "bounce",
			"sfx_override": "jump"
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": 30, "greater_than": true}
			],
			"value_to_change": "reroll_token_value",
			"diff": values[1]
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": 30, "greater_than": true}
			],
			"value_to_change": "removal_token_value",
			"diff": values[2]
		},
		{
			"required_items": ["marmalade"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"required_items": ["marmalade"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "reroll_token_value",
			"diff": values[1]
		},
		{
			"required_items": ["marmalade"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "removal_token_value",
			"diff": values[2]
		},
	]
	inherited_effects = [
		"militia_essence_effect"
	]