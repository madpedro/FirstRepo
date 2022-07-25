# get-help new-adorganizationalunit -ShowWindow

New-ADOrganizationalUnit -Name London
New-ADGroup "London Admins" -GroupScope Global
New-AdUser -Name Ty -DisplayName "Ty Carlson"
Add-ADGroupMember "London Admins" -Members Ty
New-ADComputer LON-CL2
Move-ADObject -Identity "CN=London Admins,CN=Users,DC=Adatum,DC=Com" -TargetPath "OU=London,DC=Adatum,DC=com"
Move-ADObject -Identity "CN=Ty,CN=Users,DC=Adatum,DC=Com" -TargetPath "OU=London,DC=Adatum,DC=com"
Move-ADObject -Identity "CN=LON-CL2,CN=Computers,DC=Adatum,DC=Com" -TargetPath "OU=London,DC=Adatum,DC=com"
