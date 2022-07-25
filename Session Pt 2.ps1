# You're an administrator for Adatum Corporation and must perform maintenance tasks on a server running Windows Server 2019. 
# You don't have physical access to the server, and instead plan to perform the tasks using Windows PowerShell remoting.
# You also have some tasks to perform on both a server and another client computer that runs Windows 10. 
# In your environment, communication protocols such as remote procedure call (RPC) are blocked between your local computer and the servers. 
# You plan to use Windows PowerShell remoting, and want to use sessions to provide persistence and reduce the setup and cleanup overhead that improvised remoting connections will impose.
Get-NetAdapter -Physical
# get network adapter status from multiple computers without creating a session
$LonNetAdapters = Invoke-Command -ComputerName lon-dc1,lon-svr1 -scriptblock {Get-NetAdapter -Physical}
invoke-command -ComputerName lon-dc1 -ScriptBlock {Get-Process} | Get-Member

$DC = New-PSSession -ComputerName Lon-DC1

Invoke-Command -Session $DC -ScriptBlock {get-module -ListAvailable} #SMBShare
import-module -name smbshare -pssession $dc -Prefix DC
get-smbshare
#adding prefixes when importing modules is VERY useful

$Computers = new-pssession -ComputerName Lon-DC1,Lon-SVR1

get-module -ListAvailable #netsecurity
get-command -Module NetSecurity
invoke-command -session $computers -scriptblock {(Get-NetFirewallRule -Enabled True) } | Select-Object DisplayName,pscomputername 


$Sessions = New-PSSession -ComputerName lon-svr1,lon-dc1
invoke-command -session $sessions -scriptblock {
   Get-CIMInstance -ClassName Win32_logicalDisk | Where-Object {$_.DriveType -eq 3}
   } | select-object -Property DeviceID,Size,FreeSpace,PSComputerName |
      ConvertTo-Html | Out-File -FilePath E:\gitroot\FirstRepo\drivereport.html