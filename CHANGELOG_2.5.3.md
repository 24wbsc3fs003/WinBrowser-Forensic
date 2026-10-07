## v2.5.3 — Acquisition Permission Resilience

- Fixed acquisition-planning crash caused by `PermissionError: [WinError 5] Access is denied` on protected Windows artefacts.
- Hardened Prefetch, Event Log and SRUM discovery against protected filesystem paths.
- SRUM (`SRUDB.dat`) is retained as a planned source when access is denied, allowing the acquisition run to continue and record an explicit unavailable status.
- No existing browser acquisition, date/time scope, hashing, manifests, repository, reporting or evidence-preservation logic was removed.
