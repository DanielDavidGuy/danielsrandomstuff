extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "sleigh"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sleigh"
	localized_names = {}
	description = "<group_sleighlikes> and <last_sleighlikes> give <text_color_keyword><value_1>x<end> more <icon_coin>. <group_frostburn> and <last_frostburn> last for <text_color_keyword><value_2><end> additional spins."
	localized_descriptions = {}
	values = [2, 4]
	value_text = {"color": "item_reminder_down_text", "value": ""}
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "sleighlikes"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]