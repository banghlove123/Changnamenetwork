@echo off
powershell -Command "Get-PnpDevice -Class net"
powershell -Command "Get-PnpDevice | Where-Object {$_.FriendlyName -like 'Realtek PCIe GbE Family Controller #2'} | ForEach-Object{pnputil.exe /remove-device $_.InstanceId }"
netsh interface set interface name="Ethernet"  newname="Local Area Connection"
netsh interface ipv6 show interface
pause