/*
** ENDER LILIES: Quietus of the Knights by Trex
** https://discord.gg/wWQUzB36dx
*/

state("EnderLiliesSteam-Win64-Shipping", "Steam 1.0.3")
{
	int GEngine : 0x461FC40;
	//bool monsterCount : 0x04623510, 0x128, 0xA0, 0x48;
	//long lastItem : 0x461FC40, 0x780, 0x480, 0x0, 0x3A8, 0x270, 0x70, 0x1C8, 0x10;
	
	
	bool isBossBattle : 0x461FC40, 0xDF0, 0x708, 0x98, 0x18, 0x38, 0x3A8, 0x2A0, 0x548, 0x114;
	
	
	// From Generic Crash Data
	string100 currentLevel : 0x040BDF90, 0x88, 0x0;
	string100 previousLevel : 0x040BDF90, 0x60, 0x0;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->ParameterPlayerComponent->FinalPassivePartCount
	int stoneTablets : 0x461FC40, 0xDE8, 0x38, 0x0, 0x30, 0x590, 0xFC;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->HPComponent->CurrHP
	int playerHP : 0x461FC40, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x548, 0x114;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->timeSinceCreation
	float timeSinceStartup : 0x461FC40, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x114;
	// GEngine->GameInstance->Subsystems->SaveSubsystem->currentBackupIndex
	int currentBackupIndex : 0x461FC40, 0xDE8, 0xF0, 0xB0, 0x58;
	// GEngine->GameInstance->Subsystems->WorldLoaderSubsystem
	string100 levelToLoad : 0x461FC40, 0xDE8, 0xF0, 0xF8, 0x70, 0x0;
	bool bProcessingLoad : 0x461FC40, 0xDE8, 0xF0, 0xF8, 0x8C;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->InventoryComponent->ItemPassiveInventory->Count
	int relicsCount : 0x461FC40, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x68;
	
	long relicDataTable: 0x461FC40, 0x780, 0x78, 0x118, 0x330, 0x30;
	long relicInventory: 0x461FC40, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x60;

	float gameTime: 0x461FC40, 0x780, 0x78, 0x118, 0x300, 0xB8;
}

state("EnderLiliesSteam-Win64-Shipping", "Steam 1.0.6")
{
	int GEngine : 0x4621080;
	bool isBossBattle : 0x044B5560, 0x748, 0x78, 0xDF4;
	
	// From Generic Crash Data
	string100 currentLevel : 0x040BF310, 0x88, 0x0;
	string100 previousLevel : 0x040BF310, 0x60, 0x0;

	// memory size : 78180352
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->ParameterPlayerComponent->FinalPassivePartCount
	int stoneTablets : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x590, 0xFC;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->HPComponent->CurrHP
	int playerHP : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x548, 0x114;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->timeSinceCreation
	float timeSinceStartup : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x114;
	// GEngine->GameInstance->Subsystems->SaveSubsystem->currentBackupIndex
	int currentBackupIndex : 0x4621080, 0xDE8, 0xF0, 0xB0, 0x58;
	// GEngine->GameInstance->Subsystems->WorldLoaderSubsystem
	string100 levelToLoad : 0x4621080, 0xDE8, 0xF0, 0xF8, 0x70, 0x0;
	bool bProcessingLoad : 0x4621080, 0xDE8, 0xF0, 0xF8, 0x8C;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->InventoryComponent->ItemPassiveInventory->Count
	int relicsCount : 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x68;
	
	long relicDataTable: 0x4621080, 0x780, 0x78, 0x118, 0x330, 0x30;
	long relicInventory: 0x4621080, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x60;

	float gameTime: 0x4621080, 0x780, 0x78, 0x118, 0x300, 0xB8;
}

state("EnderLiliesSteam-Win64-Shipping", "Steam 1.1.1")
{
	int GEngine : 0x4633480;
	bool isBossBattle : 0x4082F74;

	// From Generic Crash Data
	string100 currentLevel : 0x40D1060, 0x88, 0x0;
	string100 previousLevel : 0x40D1060, 0x60, 0x0;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->ParameterPlayerComponent->FinalPassivePartCount
	int stoneTablets : 0x4633480, 0xDE8, 0x38, 0x0, 0x30, 0x590, 0xF8;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->HPComponent->CurrHP
	int playerHP : 0x4633480, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x550, 0x114;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->timeSinceCreation
	float timeSinceStartup : 0x4633480, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x114;
	// GEngine->GameInstance->Subsystems->SaveSubsystem->currentBackupIndex
	int currentBackupIndex : 0x4633480, 0xDE8, 0xF0, 0xB0, 0x58;
	// GEngine->GameInstance->Subsystems->WorldLoaderSubsystem
	string100 levelToLoad : 0x4633480, 0xDE8, 0xF0, 0xF8, 0x70, 0x0;
	bool bProcessingLoad : 0x4633480, 0xDE8, 0xF0, 0xF8, 0x8C;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->InventoryComponent->ItemPassiveInventory->Count
	int relicsCount : 0x4633480, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x68;
	
	long relicDataTable: 0x4633480, 0x780, 0x78, 0x118, 0x348, 0x30;
	long relicInventory: 0x4633480, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x60;

	float gameTime: 0x4633480, 0x780, 0x78, 0x118, 0x310, 0xC8;
}

state("EnderLiliesSteam-Win64-Shipping", "Steam 1.1.2")
{
	int GEngine : 0x4633500;
	bool isBossBattle : 0x4082F74;

	// From Generic Crash Data
	string100 currentLevel : 0x40D10E0, 0x88, 0x0;
	string100 previousLevel : 0x40D10E0, 0x60, 0x0;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->ParameterPlayerComponent->FinalPassivePartCount
	int stoneTablets : 0x4633500, 0xDE8, 0x38, 0x0, 0x30, 0x590, 0xF8;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->HPComponent->CurrHP
	int playerHP : 0x4633500, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x550, 0x114;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->timeSinceCreation
	float timeSinceStartup : 0x4633500, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x114;
	// GEngine->GameInstance->Subsystems->SaveSubsystem->currentBackupIndex
	int currentBackupIndex : 0x4633500, 0xDE8, 0xF0, 0xB0, 0x58;
	// GEngine->GameInstance->Subsystems->WorldLoaderSubsystem
	string100 levelToLoad : 0x4633500, 0xDE8, 0xF0, 0xF8, 0x70, 0x0;
	bool bProcessingLoad : 0x4633500, 0xDE8, 0xF0, 0xF8, 0x8C;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->InventoryComponent->ItemPassiveInventory->Count
	int relicsCount : 0x4633500, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x68;
	
	long relicDataTable: 0x4633500, 0x780, 0x78, 0x118, 0x348, 0x30;
	long relicInventory: 0x4633500, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x60;
	
	float gameTime: 0x4633500, 0x780, 0x78, 0x118, 0x310, 0xC8;
}

state("EnderLiliesSteam-Win64-Shipping", "Steam 1.1.3")
{
	int GEngine : 0x4651C00;
	bool isBossBattle : 0x40CD2E4;
	
	// From Generic Crash Data
	string100 currentLevel : 0x40EF460, 0x88, 0x0;
	string100 previousLevel : 0x40EF460, 0x60, 0x0;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->ParameterPlayerComponent->FinalPassivePartCount
	int stoneTablets : 0x4651C00, 0xDE8, 0x38, 0x0, 0x30, 0x590, 0xF8;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->HPComponent->CurrHP
	int playerHP : 0x4651C00, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x550, 0x114;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->timeSinceCreation
	float timeSinceStartup : 0x4651C00, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x114;
	// GEngine->GameInstance->Subsystems->SaveSubsystem->currentBackupIndex
	int currentBackupIndex : 0x4651C00, 0xDE8, 0xF0, 0xB0, 0x58;
	// GEngine->GameInstance->Subsystems->WorldLoaderSubsystem
	string100 levelToLoad : 0x4651C00, 0xDE8, 0xF0, 0xF8, 0x70, 0x0;
	bool bProcessingLoad : 0x4651C00, 0xDE8, 0xF0, 0xF8, 0x8C;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->InventoryComponent->ItemPassiveInventory->Count
	int relicsCount : 0x4651C00, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x68;
	
	long relicDataTable: 0x4651C00, 0x780, 0x78, 0x118, 0x348, 0x30;
	long relicInventory: 0x4651C00, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x60;
	
	float gameTime: 0x4651C00, 0x780, 0x78, 0x118, 0x310, 0xC8;
}

state("EnderLiliesSteam-Win64-Shipping", "Steam 1.1.5")
{
	int GEngine : 0x4651CC0;
	bool isBossBattle : 0x40CD2E4;
	
	// From Generic Crash Data
	string100 currentLevel : 0x40EF4F0, 0x88, 0x0;
	string100 previousLevel : 0x40EF4F0, 0x60, 0x0;

	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->ParameterPlayerComponent->FinalPassivePartCount
	int stoneTablets : 0x4651CC0, 0xDE8, 0x38, 0x0, 0x30, 0x590, 0xF8;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->HPComponent->CurrHP
	int playerHP : 0x4651CC0, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x550, 0x114;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->Character->timeSinceCreation
	float timeSinceStartup : 0x4651CC0, 0xDE8, 0x38, 0x0, 0x30, 0x260, 0x114;
	// GEngine->GameInstance->Subsystems->SaveSubsystem->currentBackupIndex
	int currentBackupIndex : 0x4651CC0, 0xDE8, 0xF0, 0xB0, 0x58;
	// GEngine->GameInstance->Subsystems->WorldLoaderSubsystem
	string100 levelToLoad : 0x4651CC0, 0xDE8, 0xF0, 0xF8, 0x70, 0x0;
	bool bProcessingLoad : 0x4651CC0, 0xDE8, 0xF0, 0xF8, 0x8C;
	// GEngine->GameInstance->LocalPlayers[0]->PlayerController->InventoryComponent->ItemPassiveInventory->Count
	int relicsCount : 0x4651CC0, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x68;
	
	long relicDataTable: 0x4651CC0, 0x780, 0x78, 0x118, 0x348, 0x30;
	long relicInventory: 0x4651CC0, 0xDE8, 0x38, 0x0, 0x30, 0x588, 0x190, 0x60;
	
	float gameTime: 0x4651CC0, 0x780, 0x78, 0x118, 0x310, 0xC8;
}


startup
{
	vars.gameArea = new Dictionary<string, string> {
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
	
	vars.bossRooms = new Dictionary<string, string> {
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
	
	vars.minibossRooms = new Dictionary<string, string> {
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
	
	vars.relicsIds = new Dictionary<int, string> {
		{0, "Soiled Prayer Beads"},
		{1, "Royal Aegis Crest"},

		{3, "Broken Music Box"},
		{4, "Cracked Familiar Stone"},
		{5, "Snowdrop Bracelet"},
		{6, "Blighted Appendage"},
		{7, "Giant's Ring"},
		
		{9, "Ancient Dragon Claw"},
		{11, "Rusted Blue Ornament"},
		{12, "Executioner's Gloves"},
		{13, "Decayed Crown"},
		{14, "Weathered Necklace"},
		{15, "Immortal's Crest"},
		{16, "Manisa's Ring"},
		{17, "Aura's Ring"},

		{19, "Kilteus' Ring"},
		{20, "Calivia's Ring"},

		{22, "White Priestess Statue"},
		{23, "Priestess' Doll"},
		{24, "White Priestess' Earrings"},
		{25, "Holy Spring Water"},		
		{26, "Nymphilia's Ring"},
		{27, "Spellbound Anklet"},
		{28, "Vibrant Plume"},
		{29, "Ruined Witch's Book"},
		{30, "Bloodstained Ribbon"},
		{31, "Blightwreathed Blade"},
		{32, "Heretic's Mask"},

		{34, "Eldred's Ring"},
		{35, "Ricorus' Ring"},

		{37, "Luminant Aegis Curio"},
		{38, "Lost Heirloom"},
		{39, "Blighted Phantom"},
		{40, "Fretia's Ring"},
	};

	settings.Add("load_remover", true, "Load Remover");
	settings.SetToolTip("load_remover", "Pause timer during game loadings, only affects Game Time");
	settings.Add("game_time", false, "In Game Time", "load_remover");
	settings.SetToolTip("game_time", "Get In Game Time from the game's memory");
	
	settings.Add("config_split", true, "Splits Configuration");
	settings.Add("split_ending", true, "Game Endings", "config_split");
	settings.SetToolTip("split_ending", "Split when reaching Ending A, B and C");
	
	
	settings.Add("split_boss_killed", true, "Main Boss Killed", "config_split");
	settings.SetToolTip("split_boss_killed", "Split when dealing the last blow to Bosses");

	foreach (KeyValuePair<string, string> kvp in vars.bossRooms)
	{
		settings.Add("boss_" + kvp.Value, true, kvp.Key, "split_boss_killed");
	}
	settings.SetToolTip("boss_map_abyss_03", "Only split after killing the normal version (Ending B)");

	settings.Add("split_miniboss_killed", true, "Sub-Boss Killed", "config_split");
	settings.SetToolTip("split_miniboss_killed", "Split when dealing the last blow to Sub-Bosses");
	foreach (KeyValuePair<string, string> kvp in vars.minibossRooms)
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
	foreach (KeyValuePair<string, string> kvp in vars.gameArea)
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
	foreach (KeyValuePair<int, string> kvp in vars.relicsIds)
	{
		settings.Add(kvp.Value, false, kvp.Value, "split_relics");
	}
}


init
{
    byte[] exeMD5HashBytes = new byte[0];
    using (var md5 = System.Security.Cryptography.MD5.Create())
    {
        using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
        {
            exeMD5HashBytes = md5.ComputeHash(s);
        }
    }
    var MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	
	switch(MD5Hash)
	{
		case "A34788885E82A9E0D22BC3E8D9C59742": version = "Steam 1.0.3";
		{
			vars.relicsIds[39] = "Fretia's Ring";
			vars.relicsIds[40] = "Blighted Phantom";
			break;
		}
		case "2597002BD3A237F789808E0B2CB2739F": version = "Steam 1.0.6";
		{
			vars.relicsIds[39] = "Fretia's Ring";
			vars.relicsIds[40] = "Blighted Phantom";
			break;
		}
		case "BC8470E7A0A0B1A2957C715713E8B614": version = "Steam 1.1.1"; break;
		case "538FEC81491F8767337CB2BF94E40196": version = "Steam 1.1.2"; break;
		case "93F25769D1CA2B431DDEE1BAD367118D": version = "Steam 1.1.3"; break;
		case "CB3D13FA75CA5FEA74D71BC4AECF9B5D": version = "Steam 1.1.5"; break;
		case "08C65CF4BB508C0A789F826349B9827B": version = "Steam 1.1.5"; break;
		default:
		{
			var gameMessage = MessageBox.Show(
				"Unrecognized game version\n\n"+
				"Please report this error in Ender Lilies Discord\n"+
				"with the following hash:\n\n"+MD5Hash+"\n\n"+
				"Press OK to copy the above info to the clipboard and close this message.",
				"Ender Lilies Autosplitter | LiveSplit",
				MessageBoxButtons.OKCancel,MessageBoxIcon.Warning
			);
			if (gameMessage == DialogResult.OK)
				Clipboard.SetText(MD5Hash);
			version = "Unknown"; break;
		}
	}
	vars.splitsDone = new HashSet<string>();
	vars.relicsAcquired = new HashSet<long>();
	vars.lastRelicAcquired = "";
}


start
{
	vars.splitsDone = new HashSet<string>();
	vars.relicsAcquired = new HashSet<long>();
	vars.lastRelicAcquired = "";
	return old.levelToLoad == "TitleMap" && current.levelToLoad == "PersistentGameMap";
}


update
{
	if (version == "Unknown" || version == "")
		return false;

	if (old.bProcessingLoad || current.bProcessingLoad || current.timeSinceStartup < 2)
	{
		old.stoneTablets = current.stoneTablets;
		old.isBossBattle = current.isBossBattle;
		current.relicsCount = 0;
		old.relicsCount = current.relicsCount;
		vars.lastRelicAcquired = "";
		return true;
	}

	if (old.relicsCount < current.relicsCount)
    {
        IntPtr relicsInventory = new IntPtr(current.relicInventory);
        IntPtr relicsDataTable = new IntPtr(current.relicDataTable);
        for (int i = 0; i < current.relicsCount; ++i)
        {
            long relicId = game.ReadValue<long>(relicsInventory + i * 0x8);
            if (vars.relicsAcquired.Contains(relicId))
				continue;
			for (int j = 0; j < 41; ++j)
			{
				long tableRelicID = game.ReadValue<long>(relicsDataTable + j * 0x18);
				if (relicId == tableRelicID)
				{
					vars.relicsAcquired.Add(relicId);
					vars.lastRelicAcquired = vars.relicsIds[j];
					break;
				}
			}
        }
    }
	return true;
}


isLoading
{
	if (settings["game_time"])
		return true;
	return settings["load_remover"] && (current.bProcessingLoad || old.bProcessingLoad);
}


reset
{
	return current.levelToLoad == "TitleMap";
}

gameTime
{
	if (settings["game_time"])
		return TimeSpan.FromSeconds(current.gameTime);
}

split
{
	if (current.currentLevel == null)
		return false;

	bool killedABoss = old.isBossBattle && !current.isBossBattle;
	if (killedABoss && current.playerHP > 0 && !vars.splitsDone.Contains("boss_" + current.currentLevel) && settings["boss_" + current.currentLevel])
	{
		vars.splitsDone.Add("boss_" + current.currentLevel);
		print("boss_" + current.currentLevel);
		return true;
	}
	
	if (old.relicsCount < current.relicsCount && settings[vars.lastRelicAcquired] &&
		!vars.splitsDone.Contains(vars.lastRelicAcquired))
	{
		vars.splitsDone.Add(vars.lastRelicAcquired);
		print(vars.lastRelicAcquired);
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
				print("split_stone_tablet_1");
				return true;
			}
	}

	if (current.previousLevel != "" && old.currentLevel == current.previousLevel)
	{
		foreach (KeyValuePair<string, string> kvp in vars.gameArea)
		{
			if (settings[kvp.Value] && !vars.splitsDone.Contains(kvp.Value)
				&& current.currentLevel.StartsWith(kvp.Value))
			{
				vars.splitsDone.Add(current.currentLevel);
				vars.splitsDone.Add(kvp.Value);
				print("map"+current.currentLevel);
				return true;
			}
		}
		if (settings[current.currentLevel] && !vars.splitsDone.Contains(current.currentLevel))
		{
			vars.splitsDone.Add("area"+current.currentLevel);
			print(current.currentLevel);
			return true;
		}
	}
	
	// ending A, B & C
	if (settings["split_ending"] &&
		old.currentBackupIndex != current.currentBackupIndex &&
		(current.currentLevel == "map_outside_02" || current.currentLevel == "map_abyss_03") &&
		!vars.splitsDone.Contains("ending_" + current.currentLevel))
	{
		vars.splitsDone.Add("ending_" + current.currentLevel);
		print("ending_" + current.currentLevel);
		return true;
	}
	return false;
}


shutdown
{
}
