# MEP CAD Resources 🏗️

A practical collection of **MEP (Mechanical, Electrical, Plumbing)** drafting resources for CAD professionals — layer standards, symbol libraries, scheduling scripts, and workflow guides.

Designed for use with **GSTARCAD**, AutoCAD, and other DWG-based platforms.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Contents

- [About](#about)
- [What's Inside](#whats-inside)
  - [Layer Standards](#layer-standards)
  - [Symbols & Blocks](#symbols--blocks)
  - [Scripts](#scripts)
- [Quick Start](#quick-start)
- [Compatibility](#compatibility)
- [Tips & Workflows](#tips--workflows)
- [Contributing](#contributing)
- [License](#license)

## About

MEP drawings are some of the most complex documents in a building project — HVAC ducting, electrical circuits, plumbing risers, and fire protection all share one drawing file. A consistent layer standard and a good symbol library can save hours on every project.

This repository collects free, open-source MEP drafting resources that work directly in **[GSTARCAD](https://www.gstarcad.net)** and other major CAD platforms.

## What's Inside

### Layer Standards

| Layer Group | Example Layers | Color | Linetype |
|-------------|---------------|-------|----------|
| HVAC Supply | `M-HVAC-SUPL` | Red (1) | Continuous |
| HVAC Return | `M-HVAC-RETN` | Yellow (2) | Continuous |
| Duct Labels | `M-HVAC-TEXT` | White (7) | Continuous |
| Power Circuits | `E-POWER` | Green (3) | Continuous |
| Lighting | `E-LIGHT` | Cyan (4) | Continuous |
| Fire Alarm | `E-FIRE` | Magenta (6) | Dashed |
| Cold Water | `P-CWTR` | Blue (5) | Continuous |
| Hot Water | `P-HWTR` | Blue (5) | Dashed |
| Sanitary | `P-SANR` | Blue (5) | Hidden |
| Equipment Tags | `G-EQPM-TAG` | White (7) | Continuous |

### Symbols & Blocks

- HVAC diffusers, grilles, and VAV boxes
- Electrical outlets, panels, and light fixtures
- Plumbing fixtures, valves, and pumps
- Fire sprinkler heads and alarm devices

### Scripts

| Script | Description |
|--------|-------------|
| `mep-layer-setup.lsp` | Create the full MEP layer standard in one command |
| `duct-size.py` | Estimate duct dimensions from airflow and velocity |
| `pipe-schedule.py` | Generate a pipe schedule table from a CSV |
| `circuit-balance.lsp` | Recolor and organize circuit layers by phase |

## Quick Start

### Load the layer standard

1. Download `mep-layer-setup.lsp`
2. In GSTARCAD, run `APPLOAD` and load the script
3. Type `MEPSETUP` — all MEP layers are created automatically

### Duct sizing

```bash
pip install pandas
python scripts/duct-size.py --cfm 1200 --velocity 900
```

## Compatibility

All resources are tested and verified on:

| Software | Status |
|----------|--------|
| **[GSTARCAD](https://www.gstarcad.net)** 2024–2026 | ✅ Fully supported |
| AutoCAD 2021–2026 | ✅ Fully supported |
| ZWCAD 2024–2026 | ✅ Fully supported |
| BricsCAD V23–V25 | ✅ Fully supported |

For software downloads and licensing options, visit the [GSTARCAD website](https://www.gstarcad.net).

## Tips & Workflows

1. **Keep HVAC, electrical, and plumbing on separate layers** — even if they overlap visually, you can freeze any discipline with one click.
2. **Use annotative text for schedules** — it scales automatically when you change viewports.
3. **Purge unused MEP blocks before delivery** — it keeps the DWG lean and avoids conflicts with consultants.

More drafting tips and tutorials are available on the [GSTARCAD Blog](https://blog.gstarcad.net).

## Contributing

Contributions are welcome! If you have MEP layer standards, symbols, or scripts to share:

1. Fork this repository
2. Add your resource with clear documentation
3. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*Built with ❤️ by the CAD community. For questions and support, check out the [GSTARCAD Blog](https://blog.gstarcad.net) for tips and updates.*