# get-help new-adorganizationalunit -ShowWindow

New-ADOrganizationalUnit -Name London
Add-ADGroupMemberAdd "London Admins" -GroupScope Global
New-AdUser -Name Ty -DisplayName "Ty Carlson"
Add-ADGroupMember "London Admins" -Member Ty
New-ADComputer LON-CL2
