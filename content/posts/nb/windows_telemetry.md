+++
draft = false
title = 'Nota Bene - Disable Windows Telemetry'
date = '2025-08-28'
tags = [
    "NotaBene",
    "Windows",
    "Performance",
]
categories = [
    "NotaBene",
]
+++

> This post is a just a recap of <https://www.instagram.com/p/DMWd02OJnRS/>

1. Go to the Registry Editor

  1. Press `Windows` + `r`.
  2. Type `regedit`.

2. Disable Telemetry

  1. Search for `HKEY_LOCAL_MACHINE` and click.
  2. Search for `SOFTWARE` and click.
  3. Search for `Policies` and click.
  4. Search for `Microsoft` and click.
  5. Search for `Windows` and click.
  6. Search for `DataCollection` and click.
  7. Press `Right click` on the right panel.
  8. Click `new`.
  9. Click on `DWORD (32 bit Value)`.
  10. Name it `AllowTelemetry` and click on it.
  11. Set the value to `0`.

3. Stop automatic user session for Telemetry

  1. Press `Windows` + `r`.
  2. Type `Services.msc`.
  3. Search for `Connected User Experiences and Telemetry` and click. (Service name should be `DiagTrack`).
  4. Click on `Stop` (near `Service status`).
  5. Next to `Startup type`, select `Disabled` instead of `Automatic`.

4. Restart your PC.
