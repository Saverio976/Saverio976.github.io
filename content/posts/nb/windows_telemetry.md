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

## Disable Telemetry

  1. Press `Windows` + `r`.
  2. Type `regedit` and Press `Enter`.
  3. Search for `HKEY_LOCAL_MACHINE` and Click.
  4. Search for `SOFTWARE` and Click.
  5. Search for `Policies` and Click.
  6. Search for `Microsoft` and Click.
  7. Search for `Windows` and Click.
  8. Search for `DataCollection` and Click.
  9. Press `Right click` on the right panel.
  10. Click `new`.
  11. Click on `DWORD (32 bit Value)`.
  12. Name it `AllowTelemetry` and Click on it.
  13. Set the value to `0`.

## Stop automatic user session for Telemetry

  1. Press `Windows` + `r`.
  2. Type `Services.msc` and Press `Enter`.
  3. Search for `Connected User Experiences and Telemetry` and Click. (Service name should be `DiagTrack`).
  4. Click on `Stop` (near `Service status`).
  5. Next to `Startup type`, Select `Disabled` instead of `Automatic`.

## Restart your PC.

After the steps before, restart your PC.
