extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "animal_hats_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Animal Hats"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <group_animal> or <last_animal> is directly below <icon_hat> or <icon_magic_hat>. <group_animal> and <last_animal> directly below <icon_hat> and <icon_magic_hat> permanently give <text_color_keyword>2x<end> more <icon_coin>."
	localized_descriptions = {}
	values = []
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [	]