extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "goblin"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Goblin"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Removes<end> adjacent <group_commonoredrops> and <last_commonoredrops>. Gives an additional <icon_coin><color_FBF236><value_1><end> when <text_color_keyword>destroyed<end> for each <group_commonoredrops> and <last_commonoredrops> <text_color_keyword>removed<end>."
	localized_descriptions = {}
	values = [15]
	value_text = {"color": "symbol_reminder_up_text", "value": {"var_math": [{"+": "saved_value"}]}}
	rarity = "common"
	groups = ["witchlikes", "organism", "box", "monster", "flammable", "scaler", "bosslikes", "goblins"]
	sfx = ["teehee"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "commonoredrops"},
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "teehee"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "commonoredrops"},
				{"a": "removed", "b": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": values[0]
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value_bonus",
			"diff": {"var_math": [
				{"+": "saved_value"}
			]}
		}
	]
	inherited_effects = [
		"militia_essence_effect"
	]