// source KF Alex SnuffScript.u
class Pickup_PreloadedPipeBomb extends PipeBombPickup;


function inventory SpawnCopy(pawn Other)
{
  class'PipeBombProjectile'.static.PreLoadAssets();
  return super.SpawnCopy(Other);
}


defaultproperties
{
  InventoryType=class'Inv_PreloadedPipeBomb'
}