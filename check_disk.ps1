$disk = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'"

if ($disk.FreeSpace / 1GB -lt 5) {

 Write-Host "CRITICAL: moins de 5 Go sur C:"

 exit 2

}

Write-Host "OK: espace disque suffisant"

exit 0