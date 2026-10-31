extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "magic_hat"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Magic Hat"
	localized_names = {}
	value = 1
	description = "<group_human> and <last_human> directly below this symbol permanently give <color_FBF236><icon_coin><value_1><end> more. <text_color_keyword>Transforms<end> <icon_snowman> directly below this symbol into <icon_frosty>."
	localized_descriptions = {}
	values = [2]
	value_text = {}
	rarity = "rare"
	groups = ["magic", "hats"]
	sfx = []
	effects = [
		{
			"forbidden_items": ["fedora", "hat_stack"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine"
		},
		{
			"forbidden_items": ["fedora"],
			"required_items": ["hat_stack"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine"
		},
		{
			"forbidden_items": ["fedora", "hat_stack"],
			"required_items": ["animal_hats"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine"
		},
		{
			"forbidden_items": ["fedora"],
			"required_items": ["hat_stack", "animal_hats"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine"
		},
		{
			"forbidden_items": ["fedora"],
			"required_items": ["hat_stack"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "hatted"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"value_to_change": "value_multiplier",
			"diff": 2,
			"one_time": true
		},
		{
			"required_items": ["animal_hats_essence"],
			"forbidden_items": ["fedora", "hat_stack"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "permanent_multiplier",
			"diff": 2,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"item_to_destroy": "animal_hats_essence"
		},
		{
			"forbidden_items": ["fedora"],
			"required_items": ["hat_stack", "animal_hats_essence"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"value_to_change": "permanent_multiplier",
			"diff": 2,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"item_to_destroy": "animal_hats_essence"
		},
		{
			"required_items": ["fedora_essence"],
			"forbidden_items": ["fedora", "hat_stack"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "permanent_multiplier",
			"diff": 2,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"item_to_destroy": "fedora_essence"
		},
		{
			"forbidden_items": ["fedora"],
			"required_items": ["hat_stack", "fedora_essence"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"value_to_change": "permanent_multiplier",
			"diff": 2,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"item_to_destroy": "fedora_essence"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "hat"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"item_to_destroy": "hat_stack_essence"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "magic_hat"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"item_to_destroy": "hat_stack_essence"
		},
		{
			"required_items": ["fedora"],
			"forbidden_items": ["hat_stack"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_bonus",
			"diff": values[0]+values[0]+values[0]+values[0],
		},
		{
			"required_items": ["fedora", "hat_stack"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_bonus",
			"diff": values[0]+values[0]+values[0]+values[0],
		},
		{
			"forbidden_items": ["hat_stack"],
			"required_items": ["fedora", "animal_hats"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_bonus",
			"diff": values[0]+values[0]+values[0]+values[0],
		},
		{
			"required_items": ["fedora", "hat_stack", "animal_hats"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_bonus",
			"diff": values[0]+values[0]+values[0]+values[0],
		},
		{
			"required_items": ["fedora", "hat_stack"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "hatted"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"value_to_change": "value_multiplier",
			"diff": 16,
			"one_time": true
		},
		{
			"required_items": ["fedora", "animal_hats_essence"],
			"forbidden_items": ["hat_stack"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_multiplier",
			"diff": 16,
			"item_to_destroy": "animal_hats_essence"
		},
		{
			"required_items": ["fedora", "hat_stack", "animal_hats_essence"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "animal"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_multiplier",
			"diff": 16,
			"item_to_destroy": "animal_hats_essence"
		},
		{
			"forbidden_items": ["hat_stack"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "snowman"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "type",
			"diff": "frosty",
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"one_time": true
		},
		{
			"required_items": ["hat_stack"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "snowman"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"value_to_change": "type",
			"diff": "frosty",
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"one_time": true
		},
		{
			"required_items": ["fedora", "fedora_essence"],
			"forbidden_items": ["hat_stack"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_multiplier",
			"diff": 16,
			"item_to_destroy": "fedora_essence"
		},
		{
			"required_items": ["fedora", "hat_stack", "fedora_essence"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}, 
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}, "greater_than": true}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "permanent_multiplier",
			"diff": 16,
			"item_to_destroy": "fedora_essence"
		},
	]