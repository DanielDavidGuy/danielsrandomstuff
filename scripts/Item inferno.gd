extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "inferno"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Inferno"
	localized_names = {}
	description = "<icon_fire> gives <icon_coin><color_FBF236><value_1><end> more for each other <icon_fire>."
	localized_descriptions = {}
	values = [1]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "fire"}
			],
			"value_to_change": "value_bonus",
			"diff": {"starting_value": {"counted_symbols": "fire"}, "var_math": [
				{"*": values[0]}
			]}
		}
	]