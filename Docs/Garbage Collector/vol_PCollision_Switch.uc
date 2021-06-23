// DO NOT USE ME ATM!!!
class vol_PCollision_Switch extends PhysicsVolume;


event PostBeginPlay()
{
  super.PostBeginPlay();
  log("TestVolume -> vol_PCollision_Enable is online!");
}


// we want to disable playercollsion on this event
simulated event PawnEnteredVolume(Pawn Other)
{
  super.PawnEnteredVolume(Other);

  if (Role == Role_Authority && ClassIsChildOf(Other.class, class 'KFHumanPawn'))
  {
    Other.bBlockActors = true;
    log(">  Vol_TouchDisableBlockPlayers: DISABLED player collision for " $ KFPlayerController(Other.Controller).PlayerOwnerName);
  }
}


event PawnLeavingVolume(Pawn Other)
{
  super.PawnLeavingVolume(Other);

  if (Role == Role_Authority && ClassIsChildOf(Other.class, class 'KFHumanPawn'))
  {
    Other.bBlockActors = true;
    log(">  Vol_TouchDisableBlockPlayers: DISABLED player collision for " $ KFPlayerController(Other.Controller).PlayerOwnerName);
  }
}


defaultproperties{}