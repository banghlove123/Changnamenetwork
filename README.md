@echo off  
> คำสั่งนี้จะปิดการแสดงผลของคำสั่งแต่ละบรรทัดในหน้าต่าง Command Prompt เมื่อสคริปต์ทำงาน
powershell -Command "Get-PnpDevice -Class net" // (powershell -Command): เป็นการสั่งให้ Command Prompt รันคำสั่ง PowerShell ที่อยู่ถัดไป // (Get-PnpDevice): เป็น cmdlet (คำสั่ง) ของ PowerShell ที่ใช้แสดงรายการอุปกรณ์ Plug and Play (PnP) ทั้งหมดที่เชื่อมต่อกับคอมพิวเตอร์  // (-Class net): เป็นพารามิเตอร์ที่ใช้กรองผลลัพธ์ให้แสดงเฉพาะอุปกรณ์ที่มีคลาสเป็น "net" ซึ่งหมายถึงอุปกรณ์เครือข่ายทั้งหมด (เช่น อะแดปเตอร์อีเทอร์เน็ต, อะแดปเตอร์ Wi-Fi)
powershell -Command "Get-PnpDevice | Where-Object {$_.FriendlyName -like 'Realtek PCIe GbE Family Controller #2'} | ForEach-Object{pnputil.exe /remove-device $_.InstanceId }" // รรทัดนี้จะค้นหาอะแดปเตอร์เครือข่ายชื่อ "Realtek PCIe GbE Family Controller #2" และทำการถอนการติดตั้งออกจากระบบ
netsh interface set interface name="Ethernet"  newname="Local Area Connection" // บรรทัดนี้จะเปลี่ยนชื่ออะแดปเตอร์เครือข่ายที่ปัจจุบันชื่อ "Ethernet" ให้เป็น "Local Area Connection"
netsh interface ipv6 show interface  // เป็นคำสั่งย่อยที่แสดงรายการอินเทอร์เฟซเครือข่ายทั้งหมดพร้อมข้อมูลการกำหนดค่า IPv6 ของแต่ละอินเทอร์เฟซ (เช่น สถานะ, MTU, ที่อยู่ IPv6)
pause //คำสั่งนี้จะหยุดการทำงานของสคริปต์ชั่วคราวและแสดงข้อความว่า "Press any key to continue . . ." 
