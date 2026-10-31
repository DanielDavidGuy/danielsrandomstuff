extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "hat_stack_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Hat Stack"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself when <icon_hat> or <icon_magic_hat> is directly above <icon_hat> or <icon_magic_hat>. When <text_color_keyword>destroyed<end>, <icon_hat> and <icon_magic_hat> give <icon_coin><color_FBF236><value_1><end> more."
	localized_descriptions = {}
	values = [2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "hats", "bonus": values[0]}
		},
	]