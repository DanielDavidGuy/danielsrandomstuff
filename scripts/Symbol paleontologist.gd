extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "paleontologist"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Paleontologist"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_arch2likes> and <last_arch2likes>. Gives <icon_coin><color_FBF236><value_1><end> for each <group_arch2likes> and <last_arch2likes> <text_color_keyword>destroyed<end>. Adjacent <icon_fossil> will only <text_color_keyword>add<end> <text_color_uncommon>Uncommon<end> or better symbols. Adjacent <icon_shiny_fossil> will only <text_color_keyword>add<end> <text_color_rare>Rare<end> or better symbols."
	localized_descriptions = {}
	values = [12]
	value_text = {}
	rarity = "uncommon"
	groups = ["human", "organism", "doglikes", "zlikes", "hatted"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "type", "b": "fossil"}
			],
			"value_to_change": "saved_value", 
			"diff": 1,
			"overwrite": true,
			"push_front": true
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "type", "b": "shiny_fossil"}
			],
			"value_to_change": "saved_value", 
			"diff": 1,
			"overwrite": true,
			"push_front": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "arch2likes"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "arch2likes"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": values[0]
		},
	]