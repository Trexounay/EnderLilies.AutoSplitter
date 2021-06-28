/*
** ENDER LILIES: Quietus of the Knights v1.03 13175
*/
state("EnderLiliesSteam-Win64-Shipping", "v1.03.13175 (Steam)")
{
    /*
    ** 1: menu
    ** 3: game
    */
	int isMainMenu : 0x4164948;
	bool isGamePlaying : 0x461FBE8;
	bool isLoading : 0x44E7134;
}

init
{
}

startup
{
    settings.Add("load_remover", true, "Load Remover");
}

start
{
    if (current.isMainMenu == 3 && !current.isLoading && current.isGamePlaying)
        return true;    
}

reset
{
    if (current.isMainMenu == 1)
    {
        return true;
    }
	return false;
}

isLoading
{
    if (settings["load_remover"])
    {
        return !current.isLoading;
    }
    return false;
}
