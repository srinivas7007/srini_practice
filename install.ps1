#Only If not before, Initialize PowerShell
Set=ExecutionPolicy Unrestricted -Force
[Net.ServicePointManger]::SecurtiyProtocol = [Net.SecurtiyProtocolType]::Tls12

#Download terraform and unzip to c:/terraform folder
$Path = $env:TEMP;
cd $Path;
$File = "terraform_1.5.7_windows_amd64.zip";
$Destination = "C:\terraform";
Invoke-Webrequest "https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_windows_amd64.zip" -OutFile $Path\$File;
Expand-Archive -Path $Path\$File -DestinationPath $Destination;
