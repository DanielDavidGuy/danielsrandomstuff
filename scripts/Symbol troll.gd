extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "troll"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Troll"
	localized_names = {}
	value = -1
	description = "Adjacent <group_monster> and <last_monster> give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [4]
	value_text = {}
	rarity = "uncommon"
	groups = ["organism", "monster", "bosslikes"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beastmaster",
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
	]