/*
** ENDER LILIES: Quietus of the Knights
*/
state("EnderLiliesSteam-Win64-Shipping", "v1.06.13282(Steam)")
{
    bool isBossBattle : 0x044B5560, 0x748, 0x78, 0xDF4;

    bool isInGame : 0x045FEF80, 0xC60, 0x900;
    bool isLoading : 0x040CE480, 0x54C;
    
    int isCinematic : 0x40D3D10;
    
    int stoneTablets : 0x0460D700, 0x30, 0x738, 0x2B8, 0x2A8,
    0x28, 0x20, 0x20, 0x28, 0x20, 0x20, 0x2D0, 0x590, 0xFC;

    string100 currentLevel : 0x040BF310, 0x88, 0x0;
    string100 previousLevel : 0x040BF310, 0x60, 0x0;
}


startup
{
    settings.Add("load_remover", true, "Load Remover");
    settings.Add("config_split", true, "Splits Configuration");
    settings.Add("split_boss_killed", true, "Boss killed", "config_split");
    settings.Add("split_stone_tablet", false, "Stone tablets", "config_split");
    settings.Add("split_stone_tablet_1", true, "Tablet (1/7)", "split_stone_tablet");
    settings.Add("split_stone_tablet_2", true, "Tablet (2/7)", "split_stone_tablet");
    settings.Add("split_stone_tablet_3", true, "Tablet (3/7)", "split_stone_tablet");
    settings.Add("split_stone_tablet_4", true, "Tablet (4/7)", "split_stone_tablet");
    settings.Add("split_stone_tablet_5", true, "Tablet (5/7)", "split_stone_tablet");
    settings.Add("split_stone_tablet_6", true, "Tablet (6/7)", "split_stone_tablet");
    settings.Add("split_stone_tablet_7", true, "Tablet (7/7)", "split_stone_tablet");
    settings.Add("split_room_changed", false, "Room changed", "config_split");
}


init
{
    version = "v1.06.13282(Steam)";
    current.debug = "";
}


update
{
    if (version == "")
        return false;

    if (!old.isBossBattle && current.isBossBattle)
    {
        vars.current_boss_room = current.currentLevel;
    }
    
    if (old.isLoading || current.isLoading)
    {
        old.stoneTablets = current.stoneTablets;
        old.isBossBattle = current.isBossBattle;
    }

    return true;
}

start
{
    if (!old.isInGame && current.isInGame)
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
    if (settings["split_boss_killed"])
    {
        if (old.isBossBattle && !current.isBossBattle)
            return true;
    }
    if (settings["split_room_changed"])
    {
        if (old.currentLevel == current.previousLevel)
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
                return true;
    }
    return false;
}
