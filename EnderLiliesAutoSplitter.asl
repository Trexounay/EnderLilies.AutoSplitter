/*
** ENDER LILIES: Quietus of the Knights
*/
state("EnderLiliesSteam-Win64-Shipping", "v1.06.13282(Steam)")
{
    bool isBossBattle : 0x044B5560, 0x748, 0x78, 0xDF4;

	bool isInGame : 0x045FEF80, 0xC60, 0x900;
	bool isLoading : 0x040CE480, 0x54C;

    string100 currentLevel : 0x040BF310, 0x88, 0x0;
    string100 previousLevel : 0x040BF310, 0x60, 0x0;
}

startup
{
    settings.Add("load_remover", true, "Load Remover");
    settings.Add("config_split", true, "Splits Configuration");
    settings.Add("split_boss_killed", true, "Boss killed", "config_split");
    settings.Add("split_room_changed", false, "Room changed", "config_split");
}

init
{
    version = "v1.06.13282(Steam)";
}

split
{
    if (settings["split_room_changed"])
    {
        if (old.currentLevel == current.previousLevel)
            return true;
    }
    if (settings["split_boss_killed"])
    {
        if (old.isBossBattle && !current.isBossBattle &&
            old.currentLevel == current.currentLevel)
            return true;
    }
    return false;
}

update
{
    if (version == "")
        return false;
}


start
{
    if (!old.isInGame && current.isInGame)
        return true;
    return false;
}

reset
{
    if (!current.isInGame)
    {
        return true;
    }
	return false;
}

isLoading
{
    if (settings["load_remover"])
    {
        return current.isLoading;
    }
    return false;
}
