# How many functions are available to you in PowerShell?
Get-Command -CommandType Function | Measure-Object

# Using WMI/CIM, list all operating system properties for the local machine.
Get-CimInstance Win32_OperatingSystem -ComputerName $env:COMPUTERNAME | Select-Object *

# Ex3.Using WMI/CIM, write a PowerShell expression that will write an object to the pipeline showing the computer name, the last time the computer booted, and its uptime.

Get-CimInstance Win32_OperatingSystem -ComputerName $env:COMPUTERNAME | Select-Object PSComputerName, LastBootUpTime, @{n='Uptime';e={(Get-Date)-$_.LastBootUpTime}}

#ex4. Create a new PSDrive called Docs that maps to your Documents folder.
New-PSDrive -Name Docs -PSProvider FileSystem -Root $env:USERPROFILE\Documents
## To remove use Remove-PSDrive

##EX5. Take the string powershell and display it in reverse.

$s = 'powershell'
$arr =$s.ToCharArray() # changes array to string.






