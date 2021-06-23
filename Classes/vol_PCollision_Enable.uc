class vol_PCollision_Enable extends PhysicsVolume;


event PostBeginPlay()
{
  super.PostBeginPlay();
  log("TestVolume -> vol_PCollision_Enable is online!");
}


// we want to ENABLE player collision on this event
simulated event PawnEnteredVolume(Pawn Other)
{
  // do we really need the parent code?
  super.PawnEnteredVolume(Other);

  if (Role == Role_Authority && ClassIsChildOf(Other.class, class 'KFHumanPawn'))
  {
    Other.bBlockActors = true;
    log(">  Vol_TouchDisableBlockPlayers: DISABLED player collision for " $ KFPlayerController(Other.Controller).PlayerOwnerName);
  }
}


defaultproperties{}