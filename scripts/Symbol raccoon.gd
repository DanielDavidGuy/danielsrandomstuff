extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "raccoon"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Raccoon"
	localized_names = {}
	value = 3
	description = "Adjacent <group_trash> and <last_trash> give <text_color_keyword><value_1>x<end> more <icon_coin>. <text_color_keyword>Destroys<end> adjacent <group_trasher> and <last_trasher>. Gives <icon_coin><color_FBF236><value_2><end> for each <group_trasher> and <last_trasher> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [3, 35]
	rarity = "rare"
	groups = ["animal", "organism", "uncommonanimals", "critter"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trasher"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump",
			"item_to_destroy": "walter_the_woodpecker_essence"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "trasher"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": values[1]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trash"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "dogpant"
		},
	]