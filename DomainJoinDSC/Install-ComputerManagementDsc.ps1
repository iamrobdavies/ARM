param (
  $vmAdminUsername,
  $vmAdminPassword
)
 
$password =  ConvertTo-SecureString $vmAdminPassword -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential(".\$vmAdminUsername", $password)
 
Install-Module -Name ComputerManagementDsc -Force -AllowClobber -Confirm:$False -SkipPublisherCheck -Credential $credential
