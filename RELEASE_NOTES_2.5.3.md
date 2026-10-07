# WinBrowser Forensics v2.5.3 — Acquisition Permission Resilience

## Fix
Protected Windows system artefacts, especially `C:\Windows\System32\sru\SRUDB.dat`, can deny filesystem metadata access to a non-elevated process. Previously, acquisition planning could crash before the acquisition loop reached its per-source exception handling.

### Changes
- Added safe file/directory access helpers for Windows system artefact discovery.
- SRUM remains in the acquisition plan when metadata access is denied, so the source is recorded as **Unavailable** instead of aborting the run.
- Existing per-item acquisition handling continues to record hashes, status and notes without falsely treating inaccessible sources as verified.
- Both **Entire Available Data** and **Date & Time Range** workflows continue to use the same resilient inventory/planning path.
- Application version: **2.5.3**.

## Operational note
For protected Windows artefacts such as SRUM, running the workbench with appropriate administrative/forensic acquisition privileges may allow direct acquisition. Regardless of privilege, access-denied sources are recorded explicitly.
