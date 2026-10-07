# WinBrowser Forensics v2.5.3 — Acquisition Test Guide

Run the application on Windows with the dependencies installed.

## Test 1 — Entire Available Data
1. Open or create a case.
2. Open **Acquisition**.
3. Click **Discover / Rescan**.
4. Confirm browser profiles and evidence periods appear.
5. Select **Entire Available Data**.
6. Confirm the acquisition plan shows the supported browser and Windows evidence groups.
7. Leave at least one profile selected.
8. Click **Acquire selected evidence**.
9. Confirm the log shows `[START]`, per-file progress, verification/snapshot results, and `[COMPLETE]`.
10. Open **Evidence Repository → Acquisition Runs** and confirm the run is stored with acquired/verified/unavailable counts.

## Test 2 — Date & Time Range
1. Discover/rescan first so the application can display available evidence periods.
2. Select **Date & Time Range**.
3. Choose a start date/time that is before the end date/time.
4. Click **Preview acquisition plan** and confirm the selected scope is displayed.
5. Click **Acquire selected evidence**.
6. Confirm the original browser evidence files are preserved in the acquisition run.
7. Confirm `scoped_events.json` and `scoped_events.csv` are created when supported history events fall in the interval.
8. Confirm the run records `MATCHES_FOUND` with the scoped event count, or `NO_EVENTS_IN_SELECTED_RANGE` for an empty interval.

## Test 3 — Invalid Range
Set the end date/time earlier than or equal to the start date/time. The application must refuse to start and show an invalid-range warning.

## Test 4 — Live Browser / Locked Database
Keep a supported browser open and run acquisition. A directly copyable database should be source-verified. If direct copying is blocked for a SQLite database, the application may create a **Snapshot** logical database and must label it as such; it must not report a logical snapshot as byte-identical source verification.

## Test 5 — Repository Collision
When both `Cookies` and `Network/Cookies` exist, confirm they are stored as distinct paths under the browser/profile repository and neither overwrites the other.

## Test 6 — Analysis
Open **Browser Analysis**, select the acquisition source and run parsing. Verified, Snapshot and Acquired evidence states are eligible for downstream parsing.
