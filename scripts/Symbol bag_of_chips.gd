extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "bag_of_chips"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bag of Chips"
	localized_names = {}
	value = 0
	description = "Gives <icon_coin><color_FBF236><value_1><end> the <text_color_keyword>first time<end> it is spun."
	localized_descriptions = {}
	values = [12]
	rarity = "common"
	groups = ["trash", "flammable", "food"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "times_coins_given", "b": 0}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		}
	]