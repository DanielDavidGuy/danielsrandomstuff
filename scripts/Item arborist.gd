extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "arborist"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Arborist"
	localized_names = {}
	description = "<group_arborlikes> and <last_arborlikes> give <text_color_keyword><value_1>x<end> more <icon_coin>. <icon_sapling> and <icon_pinecone> are <text_color_keyword>2x<end> more likely to grow."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "arborlikes"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}
	]