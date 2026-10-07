# WinBrowser Forensics V2.5.3

## Acquisition & Evidence Intelligence Expansion

V2.5.1 extends the V2.4.0 time-scoped acquisition workflow with a structured acquisition plan and optional Windows corroborating evidence.

### Acquisition scope
- Entire Available Data
- Date & Time Range with start/end date and time
- Scope is stored with timestamps and system timezone label
- Original evidence remains preserved and SHA-256 hashed

### Evidence selection
Browser evidence can be selected by group. History selection includes the shared Chromium/Firefox databases and their SQLite sidecars when present; downloads and searches stored in those databases are handled by the parser.

### Windows corroborating evidence
Optional raw acquisition can include:
- User Registry Hives
- LNK Recent Files
- Jump Lists
- Windows WebCache
- Prefetch
- Windows Event Logs
- SRUM

### Planning and provenance
Discovery now records browser version hints, profile fingerprints, and the earliest/latest timestamped history period where readable. Acquisition manifests include the selected scope, evidence groups, available periods, versions, fingerprints, hashes and source/acquired paths.

### Reproducibility
The Evidence Repository provides an **Export research package** action containing acquisition metadata and a SQLite repository snapshot for controlled academic evaluation.

### Research positioning
The release supports the dissertation's evidence-aware workflow by making acquisition coverage and source selection explicit while keeping derived time-scoped analysis separate from preservation of the original source artefacts.

# WinBrowser Forensics v2.4.0 — Acquisition Scope Control

This release adds two acquisition-scope modes: **Entire Available Data** and **Date & Time Range**.

For Date & Time Range, the investigator selects a start date/time and end date/time. The selected scope is stored with the acquisition run and applied to parsed browser events. The original acquired artefact is still preserved and SHA-256 verified; the time range does not modify or delete the source database.

## Start
```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
python run.py
```

# WinBrowser Forensics v2.2.1 — Stable Startup + Visual Reporting

This build fixes a startup failure caused by ReportLab importing Pillow before the application could create its workbench. PDF reporting is now lazy-loaded.

## Start
```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
python run.py
```

## Demo credentials
- Username: `admin`
- Password: `Forensic@2026`

## Reporting
- HTML reports start without PDF dependencies.
- PDF and HTML+PDF require `reportlab` and `Pillow`.
- The Reports page shows whether PDF dependencies are ready.

### PDF reporting resilience
PDF generation uses the richer ReportLab/Pillow renderer when available. If Pillow or ReportLab is unavailable, the application automatically falls back to its built-in dependency-free PDF renderer, which still includes case metadata, visual timelines, evidence-to-activity visualization, acquisition coverage, evidence inventory, reconstructed activities, findings, notes and audit information.


## PDF 2.2.3
The PDF renderer is vector-based and includes a professional cover, executive summary, charts, visual timeline, evidence graph, acquisition coverage, wrapped tables, traceability and audit sections. It does not require Pillow for fallback PDF generation.
## V2.5.3 Acquisition Reliability Fixes

This release hardens the Acquisition workflow after hands-on testing. Both acquisition modes are supported:
- **Entire Available Data** — preserves all selected browser source artefacts without event-time filtering.
- **Date & Time Range** — preserves the raw source artefacts and produces a separate `scoped_events.json` / `scoped_events.csv` event set for the selected inclusive interval.

The acquisition page now selects browser evidence groups by default, automatically initializes a sensible range from discovered history periods, blocks empty plans, verifies source/acquired size and SHA-256 values when possible, writes atomic partial copies, records exceptions, and keeps completed evidence even when a later item fails.

