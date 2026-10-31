extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "ghost"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Ghost"
	localized_names = {}
	value = 2
	description = "Adjacent <icon_spirit> last for <text_color_keyword><value_1><end> additional spins."
	localized_descriptions = {}
	values = [2, 1]
	value_text = {}
	rarity = "uncommon"
	groups = ["cemlikes", "witchlikes", "darkhumor", "monster", "bosslikes"]
	sfx = ["ding"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "spirit"}
			], 
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "spirit",
			"value_to_change": "times_coins_given", 
			"diff": -values[0]
		},
	]
	inherited_effects = [
		"militia_essence_effect"
	]