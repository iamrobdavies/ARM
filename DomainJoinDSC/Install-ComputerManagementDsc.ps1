param (
  $vmAdminUsername,
  $vmAdminPassword
)
 
$password =  ConvertTo-SecureString $vmAdminPassword -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential(".\$($vmAdminUsername)", $password)

Invoke-Command -Credential $credential -ComputerName $env:COMPUTERNAME -ArgumentList $PSScriptRoot -ScriptBlock {
  Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
  Install-Module -Name ComputerManagementDsc -Force -AllowClobber -Confirm:$False -SkipPublisherCheck
}
