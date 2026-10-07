
## V2.5.1 — Acquisition UI Visibility Fix
- Reworked the Acquisition page into a vertically scrollable workspace so all acquisition controls remain accessible on laptop and reduced-height displays.
- Added explicit minimum heights and stronger text/indicator styling for browser and Windows evidence checkboxes.
- Improved visibility of the date/time scope controls and scope summary.
- Grouped profile selection and acquisition progress into persistent panels.
- Preserved V2.5.1 acquisition-scope, provenance, hashing, manifest, and reporting behavior.
# Changelog

## V2.5.1 — Acquisition & Evidence Intelligence Expansion
- Added acquisition planning preview with source-file count and estimated source size.
- Added browser evidence-group selection: history/visits/searches/downloads, cookies, bookmarks, sessions/tabs, login & web data, preferences/configuration, and other browser artefacts.
- Added optional Windows corroborating acquisition for user registry hives, LNK recent files, Jump Lists, WebCache, Prefetch, Event Logs, and SRUM.
- Added browser version hints, profile fingerprints, and per-profile available evidence periods during discovery.
- Expanded acquisition manifests and SQLite acquisition metadata with selected groups, Windows groups, available periods, versions, and fingerprints.
- Added research reproducibility package export containing a repository database snapshot and acquisition metadata.
- Enhanced HTML/PDF reporting with acquisition-group visibility.
- Preserved original evidence files unchanged; date/time ranges remain analytical/event scopes while original source artifacts are retained and hashed.

# Changelog

## 2.4.0 — Acquisition Scope Control
- Added **Entire Available Data** acquisition mode.
- Added **Date & Time Range** mode with start/end date and time selection.
- Added validation requiring end date/time to be later than start date/time.
- Persisted acquisition mode, scope start/end and time-zone metadata in SQLite.
- Added acquisition scope details to JSON/CSV manifests, repository run history and forensic reports.
- Applied saved acquisition time scope to supported Chromium and Firefox event parsing while preserving original evidence files unchanged.
- Migrated repository schema to version 11 with backward-compatible columns for existing cases.

## 2.2.3 - Professional PDF Reports

- Rebuilt the dependency-free PDF renderer for readable, professional forensic reports.
- Added cover page, executive summary, KPI cards, evidence/browser charts, event charts and confidence visualization.
- Added vector visual timeline and evidence-to-activity relationship graph.
- Added acquisition coverage visualization and acquisition/evidence tables.
- Added reconstructed activity, findings, notes and detailed timeline sections with wrapped cells and pagination.
- Added traceability and audit sections.
- ASCII-safe PDF text conversion prevents broken glyphs in basic PDF viewers.
- PDF generation remains independent of Pillow.

## Reporting reliability
- PDF generation now always uses the built-in professional vector renderer, preventing missing Pillow/ReportLab packages from changing output quality or blocking reports.


## v2.5.3
- Fixed acquisition reliability and date/time scope execution.
- Added source-vs-acquired SHA-256/size verification metadata.
- Added scoped event-set export for Date & Time Range acquisitions.
- Added automatic date range initialization from discovered evidence periods.
- Added defensive failure handling and non-zero inventory validation.

## V2.5.3 — Acquisition Reliability & Scope Hardening
- Hardened both **Entire Available Data** and **Date & Time Range** acquisition execution paths.
- Entire mode selects all supported browser and Windows evidence groups by default.
- Added inclusive time-scoped derived event export while preserving the original source artefacts unchanged.
- Added retry/atomic copying and source/acquired size + SHA-256 verification.
- Added logical SQLite snapshot fallback for live/locked browser databases with explicit Snapshot status.
- Added acquisition, verification and snapshot counts to persistent run metadata and reporting.
- Fixed `Cookies` / `Network/Cookies` repository path collisions.
- Added end-to-end acquisition validation for both scope modes.
