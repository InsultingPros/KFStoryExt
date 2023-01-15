# KFStoryExt

[![GitHub all releases](https://img.shields.io/github/downloads/InsultingPros/KFStoryExt/total)](https://github.com/InsultingPros/KFStoryExt/releases)

Contains some handy tools for Killing Floor 1 map makers.

## Features

- Volume for player collision [enabling](Classes/vol_PCollision_Enable.uc) / [disabling](Classes/vol_PCollision_Disable.uc).
- New [patriarch](Classes/zed_Boss_NoZEDTime.uc) who doesn't cloak when he is not the only boss. Use `admin summon KFStoryExt.zed_Boss_NoZEDTime` for tests.
- [Multi Sky Zones](Classes/zone_SkyZoneInfo_Multi.uc).

## Installation

Needs to be added to your level:

- Method #1: <https://wiki.beyondunreal.com/Legacy:MyLevel>
- Method #2: <https://wiki.beyondunreal.com/Legacy:Unreal_Mapping_FAQ#Packages>

## Building and Dependancies

At the moment of 2021.06.23 there are no dependencies.

Use [KFCmdlet and it's batches](https://github.com/InsultingPros/KFCmdlet) for easy compilation.

```cpp
EditPackages=KFStoryExt
```

## Steam workshop

placeholder
