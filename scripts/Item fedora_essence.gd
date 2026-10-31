extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "fedora_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Fedora"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <group_human> or <last_human> is directly below <icon_hat> or <icon_magic_hat>. <group_human> and <last_human> directly below <icon_hat> and <icon_magic_hat> permanently give <text_color_keyword>2x<end> more <icon_coin>."
	localized_descriptions = {}
	values = []
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [	]