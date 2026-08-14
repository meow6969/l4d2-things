// https://steamcommunity.com/app/550/discussions/3/1489992080519728036/


function DisplayHintAll()
{
	local player = null;
	while(player = Entities.FindByClassname(player, "player"))
	{
		DoEntFire("!self", "ShowHint", "", 0, player, self);
	}
}

function DisplayHintSurvivors()
{
	local player = null;
	while(player = Entities.FindByClassname(player, "player"))
	{
		if(player.IsSurvivor())
			DoEntFire("!self", "ShowHint", "", 0, player, self);
	}
}

function DisplayHintInfected()
{
	local player = null;
	while(player = Entities.FindByClassname(player, "player"))
	{
		if(!player.IsSurvivor())
			DoEntFire("!self", "ShowHint", "", 0, player, self);
	}
}

