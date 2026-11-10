# acpi-linux-debugging
A simple script to assist in automating acpi-related debugging and optimization by inspecting ACPI tables

## Instructions

### enable execution for shellscript
```bash
chmod +x ./.dump_acpi.sh
```
### Dump acpi tables and inspect them
```bash
sudo ./.dump_acpi.sh
grep -nEi 'OSI|Windows' *.dsl | grep -iE "Windows *"
```

### ACPI OSIs example for linux
- Microsoft Windows
- Microsoft Windows NT
- Microsoft WindowsME: Millennium Edition
- Windows 2001
- Windows 2001 SP1
- Windows 2001 SP2
- Windows 2001.1
- Windows 2006
- Windows 2009
- Windows 2012
- Windows 2013
- Windows 2015
- Windows 2020

To test different configurations, you can specify certain ACPI defs in /etc/kernel/cmdline like for example:
```bash
acpi_osi="!*" acpi_osi="Windows 2001" acpi_osi="Windows 2006"
# interpreted as: clear defaults and re-add 2001 and 2006 presets
```
