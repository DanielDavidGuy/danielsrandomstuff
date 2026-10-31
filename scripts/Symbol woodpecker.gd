extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "woodpecker"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Woodpecker"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_woodlikes> and <last_woodlikes>. Gives <icon_coin> equal to <text_color_keyword><value_1>x<end> the value of symbols <text_color_keyword>destroyed<end> this way."
	localized_descriptions = {}
	values = [5]
	value_text = {}
	rarity = "common"
	groups = ["bird", "animal", "organism", "walterlikes", "woodpeckers"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "woodlikes"}
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
				{"a": "groups", "b": "woodlikes"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": {"starting_value": values[0], "var_math": [
				{"*": "final_value"}
			]}
		},
	]