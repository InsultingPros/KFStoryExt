class zed_Boss_NoZEDTime extends ZombieBoss_NoZEDTime;


// admin summon KFStoryExt.zed_Boss_NoZEDTime
// check other alive patriarchs
simulated function bool bTheOnlyPat()
{
  local ZombieBoss Pat;

  foreach DynamicActors(class'ZombieBoss', Pat)
  {
    if (Pat != none && Pat != self && Pat.Health > 0)
    {
      return false;
    }
  }

  return true;
}


simulated function CloakBoss()
{
  if (!bTheOnlyPat())
    return;

  super.CloakBoss();
}


defaultproperties{}