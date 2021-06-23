class zed_Boss_NoZEDTime extends KFStoryGame.ZombieBoss_NoZEDTime;


// check other alive patriarchs
final protected function bool AmIAlone()
{
  local ZombieBoss Patriarch;

  foreach DynamicActors(class'ZombieBoss', Patriarch)
  {
    if (Patriarch != none && Patriarch != self && Patriarch.Health > 0)
    {
      return false;
    }
  }

  return true;
}


state SneakAround
{
Begin:
  // If there's another patriarch then DO NOT CLOAK while charging
  if (AmIAlone())
    CloakBoss();

  while (true)
  {
    sleep(0.5);

    if (Level.TimeSeconds - SneakStartTime > 10.0)
    {
      GoToState('');
    }

    // If there's another patriarch then DO NOT CLOAK while charging
    if (AmIAlone() && !bCloaked && !bShotAnim)
      CloakBoss();
    if (!Controller.IsInState('ZombieHunt') && !Controller.IsInState('WaitForAnim'))
    {
      Controller.GoToState('ZombieHunt');
    }
  }
}


state InitialSneak
{
Begin:
  // If there's another patriarch then DO NOT CLOAK while charging
  if (AmIAlone())
    CloakBoss();

  while (true)
  {
    sleep(0.5);
    SneakCount++;

    // Added sneakcount hack to try and fix the endless loop crash. Try and track down what was causing this later - Ramm
    if (SneakCount > 1000 || (Controller != none && BossZombieController(Controller).bAlreadyFoundEnemy))
    {
      GoToState('');
    }

    // If there's another patriarch then DO NOT CLOAK while charging
    if (AmIAlone() && !bCloaked && !bShotAnim)
      CloakBoss();
    if (!Controller.IsInState('InitialHunting') && !Controller.IsInState('WaitForAnim'))
    {
      Controller.GoToState('InitialHunting');
    }
  }
}


defaultproperties{}