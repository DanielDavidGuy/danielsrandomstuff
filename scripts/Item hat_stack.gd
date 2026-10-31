extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "hat_stack"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Hat Stack"
	localized_names = {}
	description = "<icon_hat> and <icon_magic_hat> affect all symbols below them in their column. <group_hatted> and <last_hatted> below <icon_hat> or <icon_magic_hat> give <text_color_keyword>2x<end> more <icon_coin>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [	]