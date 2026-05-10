# FPGA Mapper Examples

## Contents

| Path | Description |
|---|---|
| `/base_sv` | Common system layer sources. |
| `/000` | Official mappers. Most important ones. |
| `/001` | Official mappers for mostly uncommon Japanese games. |
| `/004` | MMC-X mapper pack. |
| `/005` | MMC5 mapper pack. |
| `/021` | Konami VRC-X mapper pack with VRC6 sound support. |
| `/255` | System mapper used by the EverDrive menu. |
| `run_edio_fpga.py` | Launches `edio` together with mapper pack `000`. |

## Mapper Packs

Numeric folders contain mapper packs.

Each `.rbf` file may contain one or more mappers.  
Every mapper must be linked through `map_hub.sv`.

## Mapper Installation

EDN8 loads mappers directly from `.rbf` files.

`.rbf` is a raw Quartus bitstream output without any modifications.

Starting from firmware `v2.15`, `.rbf` files can be stored in the same folder as the ROM.  
No need to place mapper files into the system folder or modify `MAPROUT.BIN`.

## USB Launch

To run a ROM together with a custom mapper via USB:

```sh
edlink run --file rom.nes --fpga top.rbf