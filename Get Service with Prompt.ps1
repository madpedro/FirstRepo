param (
    [string]$servicename = (read-host -prompt "Enter a Service Name"),
    [string]$computername = 'lon-cl1'
    )
get-service -name $servicename -computername $computername