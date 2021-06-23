// Sources: partially here <https://ut99.org/viewtopic.php?t=6404>
// Mostly here <https://wiki.beyondunreal.com/Legacy:MultiSkyboxZoneInfo>
class zone_SkyZoneInfo_Multi extends ZoneInfo
  placeable;


// Input the tag of the skybox you want the fake backdrop surfaces of the zone to display
var() name SkyZoneTag;


simulated function LinkToSkybox()
{
  local skyzoneinfo TempSkyZone;

  // if we didn't set any SkyZoneInfo tag, execute original code
  if (string(SkyZoneTag) ~= "")
  {
    super.LinkToSkybox();
    return;
  }

  foreach AllActors(class'SkyZoneInfo', TempSkyZone, SkyZoneTag)
  {
    SkyZone = TempSkyZone;
    log("TestVolume -> zone_SkyZoneInfo_Multi changed SkyZoneInfo to: " $ string(SkyZoneTag));
  }
}


defaultproperties
{
  // true by default
  // bStatic=False
}