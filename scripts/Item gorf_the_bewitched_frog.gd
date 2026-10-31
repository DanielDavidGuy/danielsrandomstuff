extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "gorf_the_bewitched_frog"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Gorf the Bewitched Frog"
	localized_names = {}
	description = "<icon_frog> give <text_color_keyword><value_1>x<end> more <icon_coin>. <icon_frog> <text_color_keyword>destroy<end> adjacent <group_hex> and <last_hex> and give <icon_coin><color_FBF236>16<end> for each <group_hex> and <last_hex> destroyed."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "frog"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]