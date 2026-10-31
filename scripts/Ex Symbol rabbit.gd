extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "rabbit"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Rabbit"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Transforms<end> adjacent <icon_egg> into <icon_easter_egg>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["magic", "uncommonanimals"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "egg"}
			],
			"value_to_change": "type",
			"diff": "easter_egg",
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		}
	]