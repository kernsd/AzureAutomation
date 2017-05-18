Param(
 [string]$VMName3,
 [string]$ResourceGroupName
)
$Conn = Get-AutomationConnection -Name AzureRunAsConnection
Add-AzureRMAccount -ServicePrincipal -Tenant $Conn.TenantID `
-ApplicationID $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint
Start-AzureRmVM -Name $VMName3 -ResourceGroupName $ResourceGroupName
