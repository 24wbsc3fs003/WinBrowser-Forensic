# WinBrowser Forensics v2.5.3 — Acquisition Reliability & Scope Fix

## Acquisition modes
- Entire Available Data preserves all selected source artefacts without temporal event filtering.
- Date & Time Range preserves the raw source artefacts unchanged and also creates `scoped_events.json` and `scoped_events.csv` for the selected inclusive interval.

## Reliability fixes
- Browser evidence groups are selected by default.
- Date/time range auto-populates from discovered earliest/latest history timestamps until the investigator edits it.
- Acquisition refuses to start when the current selection resolves to zero source files.
- Source and acquired sizes plus SHA-256 values are compared when possible.
- Partial copies are written to temporary files and atomically moved into the case repository.
- Acquisition progress and failures are logged per source.
- Unexpected errors finalize the run as Failed without discarding already acquired evidence.
- Acquisition run records now include exceptions and derived scoped-event counts.
- Evidence repository exposes verification method.

## Forensic handling
The date/time range is an analytical scope, not destructive editing of the original source evidence. Raw artefacts remain preserved and hashed for provenance.


## Additional reliability hardening
- Entire Available Data now activates all supported evidence groups by default, including Windows corroborating sources.
- Direct file acquisition uses retries and atomic replacement.
- Locked/live SQLite browser databases can fall back to a consistent logical snapshot; snapshot status is kept distinct from byte-level source verification.
- Acquisition metadata records acquired_count and snapshot_count separately from exact verified_count.
- `Cookies` and `Network/Cookies` are stored in collision-safe logical paths.
- Browser Analysis accepts Verified, Snapshot and Acquired evidence states for downstream parsing.
- Added an end-to-end acquisition smoke test covering both Entire Available Data and Date & Time Range modes.
