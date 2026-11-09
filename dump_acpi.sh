mkdir -p /tmp/acpi-dump
sudo -n acpidump > /tmp/acpi-dump/acpi.txt
cd /tmp/acpi-dump
acpixtract -a acpi.txt
iasl -e ssdt*.dat -d dsdt.dat
