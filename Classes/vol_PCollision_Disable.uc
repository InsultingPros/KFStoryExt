class vol_PCollision_Disable extends PhysicsVolume;


event PostBeginPlay()
{
  super.PostBeginPlay();
  log("TestVolume -> vol_PCollision_Disable is online!");
}


// we want to DISABLE player collision on this event
simulated event PawnEnteredVolume(Pawn Other)
{
  // do we really need the parent code?
  super.PawnEnteredVolume(Other);

  if (Role == Role_Authority && ClassIsChildOf(Other.class, class 'KFHumanPawn'))
  {
    Other.bBlockActors = false;
    log(">  Vol_TouchDisableBlockPlayers: DISABLED player collision for " $ KFPlayerController(Other.Controller).PlayerOwnerName);
  }
}


defaultproperties{}