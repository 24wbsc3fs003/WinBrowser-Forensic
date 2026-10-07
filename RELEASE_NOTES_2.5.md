# WinBrowser Forensics V2.5.1 — Release Notes

## Acquisition & Evidence Intelligence Expansion

### New
- Acquisition plan preview before collection.
- Browser evidence-group selection.
- Optional Windows corroborating artefact acquisition.
- Browser version hinting and persistent profile fingerprints.
- Earliest/latest timestamped evidence-period discovery for browser history databases.
- Expanded acquisition manifests and acquisition-run metadata.
- Research reproducibility package export with repository database snapshot and environment metadata.
- HTML/PDF report visibility for selected browser and Windows acquisition groups.

### Forensic handling
- Original source evidence is never edited as a result of date/time scoping.
- SHA-256 verification remains part of evidence preservation.
- Date/time selection is recorded as an analytical scope and propagated to supported event parsing.
- Unavailable sources are recorded explicitly.

### Research alignment
This release operationalizes acquisition completeness, provenance, cross-artefact evidence collection and reproducibility elements identified in the WinBrowser Forensics research proposal.


### V2.5.1 UI Fix
The acquisition workspace was adjusted after visual testing showed that evidence-selection controls could be vertically compressed on smaller-height displays. The page now uses a dedicated vertical scroll area, explicit control sizing, and stronger checkbox/radio-button presentation so the entire acquisition workflow is visible and accessible without losing existing functionality.
