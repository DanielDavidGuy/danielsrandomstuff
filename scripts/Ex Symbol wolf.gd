extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "wolf"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Wolf"
	localized_names = {}
	value = 2
	description = "Gives <icon_coin><color_FBF236>2<end> more for each adjacent <icon_bone_pile>. <text_color_keyword>Destroys<end> adjacent <group_doghates> and <last_doghates>. Gives <icon_coin><color_FBF236>10<end> for each symbol <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [10, 2]
	rarity = "uncommon"
	groups = ["uncommonanimals"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "doghates"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "doghates"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "bone_pile"}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[1],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "dogpant"
		},
	]