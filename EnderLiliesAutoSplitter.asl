/*
** ENDER LILIES: Quietus of the Knights by Trex
** https://discord.gg/wWQUzB36dx
*/
state("EnderLiliesSteam-Win64-Shipping", "v1.06.13282(Steam)")
{
	bool isInGame : 0x045FEF80, 0xC60, 0x900;
	bool isLoading : 0x040CE480, 0x54C;

	string100 currentLevel : 0x040BF310, 0x88, 0x0;
	string100 previousLevel : 0x040BF310, 0x60, 0x0;

	bool isBossBattle : 0x044B5560, 0x748, 0x78, 0xDF4;
	int stoneTablets : 0x0460D700, 0x30, 0x738, 0x2B8, 0x2A8,
	0x28, 0x20, 0x20, 0x28, 0x20, 0x20, 0x2D0, 0x590, 0xFC;
	int playerHP : 0x4621010, 0x8, 0x8, 0x140, 0x710, 0x290, 0x2B8, 0x114;
}


startup
{
	vars.game_area = new Dictionary<string, string> {
		{"White Parish",		"map_church"},
		{"Cliffside Hamlet",	"map_village"},
		{"Ruined Castle",		"map_castle"},
		{"Twin Spires",			"map_fort"},
		{"Witch's Thicket",		"map_forest"},
		{"Catacombs",			"map_cave"},
		{"Stockade",			"map_oubliette"},
		{"Verboten Domain",		"map_swamp"},
		{"Hinterlands",			"map_outside"},
		{"The Abyss",			"map_abyss"},
	};
	
	vars.respites = new Dictionary<string, string> {
		{"Cellar",					"map_church_10"},
		{"Cathedral Cloister",		"map_church_05"},
		{"Saint's Passage",			"map_church_04"},
		{"Crossroads",				"map_church_08"},
		{"Collapsed Shack",			"map_village_05"},
		{"Bridgehead",				"map_village_09"},
		{"Ruined Castle Cellar",	"map_castle_04"},
		{"Guest Chambers",			"map_castle_07"},
		{"Maelstrom Ramparts",		"map_castle_10"},
		{"King's Chambers",			"map_castle_19"},
		{"Tower Alcove",			"map_castle_15"},
		{"Bastion Gates",			"map_fort_03"},
		{"Courtyard",				"map_fort_10"},
		{"Second Spire Chamber",	"map_fort_08"},
		{"Monument of the Wind",	"map_fort_16"},
		{"Mourning Hall",			"map_fort_20"},
		{"Dryad Lake",				"map_forest_05"},
		{"Witch's Hermitage",		"map_forest_10"},
		{"Coven Halls",				"map_forest_14"},
		{"Bottom of the Well",		"map_cave_01"},
		{"Charnel",					"map_cave_03"},
		{"Ossuary",					"map_cave_13"},
		{"Great Hall",				"map_cave_16"},
		{"Aqueduct",				"map_oubliette_02"},
		{"Cells",					"map_oubliette_06_1"},
		{"Dark Chamber",			"map_oubliette_10"},
		{"Execution Grounds",		"map_oubliette_14"},
		{"Land's Edge",				"map_outside_01"},
		{"Subterranean Lab B1",		"map_swamp_01"},
		{"Subterranean Lab B2",		"map_swamp_06"},
		{"Subterranean Lab B3",		"map_swamp_10"},
		{"Subterranean Lab B4",		"map_swamp_12"},
		{"Subterranean Lab B5",		"map_swamp_16"},
		{"Blighted Heart",			"map_abyss_02"},
	};
	
	vars.boss_rooms = new Dictionary<string, string> {
		{"Guardian Siegrid",			"map_church_03"},
		{"Gerrod, the Elder Warrior",	"map_village_10"},
		{"Dark Witch Eleine",			"map_forest_15"},
		{"Guardian Silva",				"map_cave_23"},
		{"Knight Captain Julius",		"map_castle_20"},
		{"Ulv, the Mad Knight",			"map_fort_21"},
		{"Hoenir, Keeper of the Abyss",	"map_oubliette_15"},
		{"Miriel, the Beloved",			"map_swamp_17"},
		{"Blighted Lord",				"map_abyss_03"},
	};
	
	vars.miniboss_rooms = new Dictionary<string, string> {
		{"Cliffside Hamlet Youth",	"map_church_07"},
		{"Headless Defender",		"map_village_08"},
		{"Western Merchant",		"map_village_04_1"},
		{"Castle Town Maiden",		"map_castle_02"},
		{"Fallen Archer",			"map_cave_19"},
		{"Elder Crypt Keeper",		"map_cave_07"},
		{"Fungal Sorcerer",			"map_forest_06"},
		{"Floral Sorceress",		"map_forest_11"},
		{"Fallen Sentinel",			"map_fort_01"},
		{"Hidden Test Subject",		"map_oubliette_07_2"},
		{"Dark Executioner",		"map_oubliette_12"},
		{"Incompetent Sinner",		"map_swamp_15"},
		{"Verboten Champion",		"map_swamp_04"},
		{"Cliffside Hamlet Elder",	"map_village_14"},
		{"Chief Guardian",			"map_church_09"},
		{"Forsaken Fellwyrm",		"map_fort_12"},
		{"One-Eyed Royal Aegis",	"map_castle_16"},
	};
	
	settings.Add("load_remover", true, "Load Remover");
	
	settings.Add("config_split", true, "Splits Configuration");
	
	settings.Add("split_boss_killed", true, "Main Boss Killed", "config_split");
	foreach (KeyValuePair<string, string> kvp in vars.boss_rooms)
	{
		settings.Add("boss_" + kvp.Value, true, kvp.Key, "split_boss_killed");
	}
	settings.Add("split_miniboss_killed", true, "Sub-Boss Killed", "config_split");
	foreach (KeyValuePair<string, string> kvp in vars.miniboss_rooms)
	{
		settings.Add("boss_" + kvp.Value, true, kvp.Key, "split_miniboss_killed");
	}
	
	settings.Add("split_stone_tablet", false, "Stone tablets", "config_split");
	settings.Add("split_stone_tablet_1", true, "Tablet (1/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_2", true, "Tablet (2/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_3", true, "Tablet (3/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_4", true, "Tablet (4/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_5", true, "Tablet (5/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_6", true, "Tablet (6/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_7", true, "Tablet (7/7)", "split_stone_tablet");
	
	settings.Add("split_area", false, "Areas", "config_split");
	foreach (KeyValuePair<string, string> kvp in vars.game_area)
	{
		settings.Add(kvp.Value, false, kvp.Key, "split_area");
	}

	settings.Add("split_respite", false, "Respite Rooms", "config_split");
	foreach (KeyValuePair<string, string> kvp in vars.respites)
	{
		settings.Add(kvp.Value, false, kvp.Key, "split_respite");
	}
}


init
{
	version = "v1.06.13282(Steam)";
	current.debug = "";
	
	vars.splits_done = new HashSet<string>();
}


start
{
	if (!old.isInGame && current.isInGame)
	{
		vars.splits_done = new HashSet<string>();
		return true;
	}
	return false;
}


update
{
	if (version == "")
		return false;
	
	if (old.isLoading || current.isLoading)
	{
		old.stoneTablets = current.stoneTablets;
		old.isBossBattle = current.isBossBattle;
	}
	return true;
}


isLoading
{
	return settings["load_remover"] && current.isLoading;
}


reset
{
	if (!current.isInGame)
	{
		return true;
	}
	return false;
}


split
{
	if (old.debug != current.debug)
		print(current.debug);

	if (old.isBossBattle && !current.isBossBattle && current.playerHP > 0 &&
		!vars.splits_done.Contains(current.currentLevel) && settings["boss_" + current.currentLevel])
	{
		vars.splits_done.Add(current.currentLevel);
		return true;
	}

	if (settings["split_stone_tablet"])
	{
		if (current.stoneTablets > old.stoneTablets)
			if ((settings["split_stone_tablet_1"] && current.stoneTablets == 1) ||
				(settings["split_stone_tablet_2"] && current.stoneTablets == 2) ||
				(settings["split_stone_tablet_3"] && current.stoneTablets == 3) ||
				(settings["split_stone_tablet_4"] && current.stoneTablets == 4) ||
				(settings["split_stone_tablet_5"] && current.stoneTablets == 5) ||
				(settings["split_stone_tablet_6"] && current.stoneTablets == 6) ||
				(settings["split_stone_tablet_7"] && current.stoneTablets == 7))
			{
				return true;
			}
	}

	if (current.previousLevel != "" && old.currentLevel == current.previousLevel)
	{
		foreach (KeyValuePair<string, string> kvp in vars.game_area)
		{
			if (settings[kvp.Value] && !vars.splits_done.Contains(kvp.Value)
				&& current.currentLevel.StartsWith(kvp.Value))
			{
				vars.splits_done.Add(current.currentLevel);
				vars.splits_done.Add(kvp.Value);
				return true;
			}
		}
		if (settings[current.currentLevel] && !vars.splits_done.Contains(current.currentLevel))
		{
			vars.splits_done.Add(current.currentLevel);
			return true;
		}
	}
	return false;
}
