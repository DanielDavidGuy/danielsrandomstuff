extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "bonfire"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bonfire"
	localized_names = {}
	description = "<icon_fire> no longer <text_color_keyword>destroys<end> adjacent symbols. <icon_fire> lasts for <text_color_keyword>12<end> additional spins."
	localized_descriptions = {}
	values = [1]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = []