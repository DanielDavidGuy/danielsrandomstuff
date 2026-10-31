extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "game_collection"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Game Collection"
	localized_names = {}
	description = "<group_game> and <last_game> give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [1]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "game"}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
	]