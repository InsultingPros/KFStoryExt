class vol_DisablePlayerCol extends PhysicsVolume;


event PostBeginPlay()
{
  super.PostBeginPlay();
  log("TestVolume -> vol_DisablePlayerCol is online!");
}


simulated event PawnEnteredVolume(Pawn Other)
{
	if (Role == Role_Authority && ClassIsChildOf(Other.class, class 'KFHumanPawn'))
	{
		Other.bBlockActors = false;
    log(">  Vol_TouchDisableBlockPlayers: DISABLED player collision for " $ KFPlayerController(Other.Controller).PlayerOwnerName);
	}
}


defaultproperties{}