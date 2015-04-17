#include <a_samp>

main()
{
	print("+----------------------------------+\n");
	print("   FGF - FrosTy's Gaming Freeroam!  \n");
	print("+----------------------------------+\n");
}

public OnGameModeInit()
{
SetGameModeText("Freeroam/Stunt/Race");
CreateVehicle(411, 2121.2097, -1784.8972, 13.1141, 90.1161, 2, 3, -1);
CreateVehicle(522, 2099.4192, -1785.0995, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(539, 2121.7942, -1770.4578, 12.7542, 91.9004, 2, 3, -1);
CreateVehicle(541, 2096.8196, -1816.9753, 13.0078, 89.6406, 2, 3, -1);
CreateVehicle(560, 2096.8054, -1797.2024, 13.0910, 91.3337, 2, 3, -1);
CreateVehicle(522, 2101.4893, -1785.3256, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2103.5735, -1785.3136, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2105.2195, -1785.2924, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2106.7673, -1785.2893, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2108.2529, -1785.2959, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2109.6206, -1785.2942, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2111.0239, -1785.2898, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2112.3584, -1785.2886, 12.9659, 309.3000, 2, 3, -1);
CreateVehicle(522, 2113.7034, -1785.2704, 12.9659, 309.3000, 2, 3, -1);
CreateObject(18829, 2163.33569, -1850.63855, 7.14702,   156.78003, 91.43994, 0.00000);
CreateObject(19005, 2198.28589, -1850.00171, -3.72226,   0.00000, 0.00000, 87.12001);
CreateObject(19128, 2096.50757, -1806.82996, 12.48590,   0.00000, 0.00000, -90.78000);

}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	AddPlayerClass(294, 1958.33, 1343.12, 15.36, 269.15, 26, 36, 28, 150, 0, 0); // Woozie
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	SetPlayerMapIcon(playerid, 12, 2100.125244 , -1804.260498 , 13.554687, 50, 0, MAPICON_LOCAL );
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	GivePlayerWeapon(playerid, WEAPON_MP5,100000);
	GivePlayerWeapon(playerid, WEAPON_DEAGLE,100000);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/savepos", cmdtext, true, 8) == 0)
	{
		new Float:x,Float:y,Float:z,Stringy[128];
		GetPlayerPos(playerid,x,y,z);
		new File:Saves = fopen("savedcoordinates.txt", io_append);
		format(Stringy,128,"%f , %f , %f,\r\n",x,y,z);
		fwrite(Saves,Stringy);
		fclose(Saves);
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
