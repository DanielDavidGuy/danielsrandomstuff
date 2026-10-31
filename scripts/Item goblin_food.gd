extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "goblin_food"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Goblin Food"
	localized_names = {}
	description = "<icon_goblin> give <icon_coin><color_FBF236><value_1><end> more. <icon_goblin> give an additional <icon_coin><color_FBF236><value_2><end> when <text_color_keyword>destroyed<end> for each spin."
	localized_descriptions = {}
	values = [1, 1]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "goblin"}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "goblin"}
			],
			"value_to_change": "saved_value",
			"diff": values[1]
		}
	]