$DCSession = New-PSSession -ComputerName Lon-DC1

Import-Module -PSSession $DCSession ActiveDirectory -Prefix DC1

(get-DC1ADuser -filter * -Properties Location).name
