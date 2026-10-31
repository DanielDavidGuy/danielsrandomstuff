extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "hooligan"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Hooligan"
	localized_names = {}
	value = 2
	description = "Also <text_color_keyword>removes<end> adjacent <icon_bag_of_chips>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["zlikes"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "bag_of_chips"}
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		}
	]