/*
** ENDER LILIES: Quietus of the Knights by Trex
** https://discord.gg/wWQUzB36dx
*/
state("EnderLiliesSteam-Win64-Shipping", "v1.06.13282(Steam)")
{
	string100 currentLevel : 0x040BF310, 0x88, 0x0;
	string100 previousLevel : 0x040BF310, 0x60, 0x0;

	bool isBossBattle : 0x044B5560, 0x748, 0x78, 0xDF4;

	// GEngine : 0x4621080
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->ParameterPlayerComponent
	int stoneTablets : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x590, 0xFC;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character
	ulong ParameterPlayerComponent : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x590;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->HPComponent
	int playerHP : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x548, 0x114;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character
	float timeSinceStartup : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x114;

	// GEngine->GameInstance->Subsystems->SaveSubsystem
	int currentBackupIndex : 0x4621080, 0xDE8, 0xF0, 0xB0, 0x58;
	int currentBackupIndex : 0x4621080, 0xDE8, 0xF0, 0xB0, 0x58;
	
	// GEngine->GameInstance->Subsystems->WorldLoaderSubsystem
	string100 levelToLoad : 0x4621080, 0xDE8, 0xF0, 0xF8, 0x70, 0x0;
	bool bProcessingLoad : 0x4621080, 0xDE8, 0xF0, 0xF8, 0x8C;
	bool bWaitingForFade : 0x4621080, 0xDE8, 0xF0, 0xF8, 0x8D;
	
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->InventoryComponent->ItemPassiveInventory->Count
	int relicsCount : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x68;
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
		{"Castle Town Maiden",		"map_castle_01"},
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
	
	vars.relics_ids = new Dictionary<string, long> {
		{"Soiled Prayer Beads", 0x00000000001D946F},
		{"Royal Aegis Crest", 0x00000000001D947B},
		{"Broken Music Box", 0x00000000001D9487},
		{"Cracked Familiar Stone", 0x00000000001D9492},
		{"Snowdrop Bracelet", 0x00000000001D949D},
		{"Blighted Appendage", 0x00000000001D94A8},
		{"Giant's Ring", 0x00000000001D94B1},
		
		{"Ancient Dragon Claw", 0x00000000001D94BE},
		{"Rusted Blue Ornament", 0x00000000001D94CB},
		{"Executioner's Gloves", 0x00000000001D94D8},
		{"Decayed Crown", 0x00000000001D94E4},
		{"Weathered Necklace", 0x00000000001D94F5},
		{"Immortal's Crest", 0x00000000001D9501},
		{"Manisa's Ring", 0x00000000001D950E},
		
		{"Aura's Ring", 0x00000000001D9522},
		{"Kilteus' Ring", 0x00000000001D9536},
		{"Calivia's Ring", 0x00000000001D9546},
		{"White Priestess Statue", 0x00000002001D9556},
		{"Priestess' Doll", 0x00000004001D9556},
		{"White Priestess' Earrings", 0x00000003001D9556},
		{"Holy Spring Water", 0x00000000001D9563},
		
		{"Nymphilia's Ring", 0x00000000001D9570},
		{"Spellbound Anklet", 0x00000000001D957B},
		{"Vibrant Plume", 0x00000000001D9588},
		{"Ruined Witch's Book", 0x00000000001D9595},
		{"Bloodstained Ribbon", 0x00000002001D95A0},
		{"Blightwreathed Blade", 0x00000003001D95A0},
		{"Heretic's Mask", 0x00000000001D95A9},
		
		{"Eldred's Ring", 0x00000000001D95B8},
		{"Ricorus' Ring", 0x00000000001D95C7},
		{"Luminant Aegis Curio", 0x000000000000A3C7},
		{"Lost Heirloom", 0x00000000001D95D1},
		{"Fretia's Ring", 0x00000000001D95E1},
	};
	settings.Add("load_remover", true, "Load Remover");
	settings.SetToolTip("load_remover", "Don't ");
	settings.Add("load_remover_igt", false, "Set LiveSplit to Game Time", "load_remover");
	settings.SetToolTip("load_remover_igt", "Prompt the user if LiveSplit is not configured to compare against Game Time");
	
	settings.Add("config_split", true, "Splits Configuration");
	settings.Add("split_ending", true, "Game Endings", "config_split");
	settings.SetToolTip("split_ending", "Split when reaching Ending A, B and C");
	
	
	settings.Add("split_boss_killed", true, "Main Boss Killed", "config_split");
	settings.SetToolTip("split_boss_killed", "Split when dealing the last blow to Bosses");
	foreach (KeyValuePair<string, string> kvp in vars.boss_rooms)
	{
		settings.Add("boss_" + kvp.Value, true, kvp.Key, "split_boss_killed");
	}
	settings.SetToolTip("boss_map_abyss_03", "Only split after killing the normal version (Ending B)");

	settings.Add("split_miniboss_killed", true, "Sub-Boss Killed", "config_split");
	settings.SetToolTip("split_miniboss_killed", "Split when dealing the last blow to Sub-Bosses");
	foreach (KeyValuePair<string, string> kvp in vars.miniboss_rooms)
	{
		settings.Add("boss_" + kvp.Value, true, kvp.Key, "split_miniboss_killed");
	}
	
	settings.Add("split_stone_tablet", false, "Stone tablets", "config_split");
	settings.SetToolTip("split_stone_tablet", "Split when an amount of stone tablets is collected");
	settings.Add("split_stone_tablet_1", true, "Tablet (1/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_2", true, "Tablet (2/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_3", true, "Tablet (3/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_4", true, "Tablet (4/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_5", true, "Tablet (5/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_6", true, "Tablet (6/7)", "split_stone_tablet");
	settings.Add("split_stone_tablet_7", true, "Tablet (7/7)", "split_stone_tablet");
	
	settings.Add("split_area", false, "Areas", "config_split");
	settings.SetToolTip("split_area", "Split when entering the area for the first time");
	foreach (KeyValuePair<string, string> kvp in vars.game_area)
	{
		settings.Add(kvp.Value, false, kvp.Key, "split_area");
	}

	settings.Add("split_respite", false, "Respite Rooms", "config_split");
	settings.SetToolTip("split_respite", "Split when entering the respite room for the first time");
	foreach (KeyValuePair<string, string> kvp in vars.respites)
	{
		settings.Add(kvp.Value, false, kvp.Key, "split_respite");
	}

	settings.Add("split_relics", false, "Relics", "config_split");
	settings.SetToolTip("split_relics", "Split when the relic is added to player's inventory");
	foreach (KeyValuePair<string, long> kvp in vars.relics_ids)
	{
		settings.Add(kvp.Value.ToString(), false, kvp.Key, "split_relics");
	}
}


init
{
	version = "v1.06.13282(Steam)";
	current.debug = "";

	vars.splits_done = new HashSet<string>();
	vars.relics_acquired = new HashSet<long>();
	
	current.lastRelicAcquired = 0;
	
	if (timer.CurrentTimingMethod == TimingMethod.RealTime && settings["load_remover_igt"])
	{
		var message = MessageBox.Show(
			"Load remover only affects Game Time.\nDo you want to switch LiveSplit to Game Time ?", 
			"LiveSplit | ENDER LILIES: Quietus of the Knights", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

		if (message == DialogResult.Yes)
		{
			timer.CurrentTimingMethod = TimingMethod.GameTime;
		}
	}
}


start
{
	if (old.levelToLoad == "TitleMap" && current.levelToLoad == "PersistentGameMap")
	{
		vars.splits_done = new HashSet<string>();
		vars.relics_acquired = new HashSet<long>();
		current.lastRelicAcquired = "";
		old.relicsCount = 0;
		return true;
	}
	return false;
}


update
{
	if (version == "")
		return false;

	if (old.bProcessingLoad || current.bProcessingLoad || current.timeSinceStartup < 2)
	{
		old.stoneTablets = current.stoneTablets;
		old.isBossBattle = current.isBossBattle;
		current.relicsCount = 0;
		old.relicsCount = 0;
		return true;
	}
	
	if (current.relicsCount > old.relicsCount)
	{
		for (int i=0; i < current.relicsCount; i++)
		{
			long relic_id = new DeepPointer((IntPtr)(modules.First().BaseAddress + 0x4621080), 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x60, (i * 0x8)).Deref<long>(game);
			if (!vars.relics_acquired.Contains(relic_id))
			{
				current.lastRelicAcquired = relic_id.ToString();
				vars.relics_acquired.Add(relic_id);
			}
		}
	}

	return true;
}


isLoading
{
	return settings["load_remover"] && current.bProcessingLoad;
}


reset
{
	if (current.levelToLoad == "TitleMap")
	{
		return true;
	}
	return false;
}


split
{
	if (old.debug != current.debug)
		print(current.debug);

	if (current.currentLevel == null)
		return false;

	if (old.isBossBattle && !current.isBossBattle && current.playerHP > 0 &&
		!vars.splits_done.Contains("boss_" + current.currentLevel) && settings["boss_" + current.currentLevel])
	{
		vars.splits_done.Add("boss_" + current.currentLevel);
		return true;
	}
	
	if (current.relicsCount > old.relicsCount && settings[current.lastRelicAcquired] &&
		!vars.splits_done.Contains(current.lastRelicAcquired))
	{
		vars.splits_done.Add(current.lastRelicAcquired);
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
	
	// ending A, B & C
	if (settings["split_ending"] &&
		old.currentBackupIndex != current.currentBackupIndex &&
		(current.currentLevel == "map_outside_02" || current.currentLevel == "map_abyss_03") &&
		!vars.splits_done.Contains("ending_" + current.currentLevel))
	{
		vars.splits_done.Add("ending_" + current.currentLevel);
		return true;
	}
	return false;
}
