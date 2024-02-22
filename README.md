<h1 align="center">
  <br>
  <img src=".\Media\control-horiz-master.webp" alt="logo" width = 75% ></a>
  <br>
  ConnectWise Control API
  <br>
</h1>


<p align="center">
    <a href="ConnectWiseControlAPI_Functions.md">List of Functions</a> •
    <a href="./Examples">Examples</a> •
    <a href="#install">Install</a> •
    <a href="https://github.com/Jcblmao/GitHub-Template/blob/main/CONTRIBUTING.md">Contribute</a> •
    <a href="https://github.com/Jcblmao/GitHub-Template/blob/main/CONTRIBUTING.md#reporting-bugs">Submit a Bug</a> •
    <a href="https://github.com/Jcblmao/GitHub-Template/blob/main/CONTRIBUTING.md#suggesting-enhancements">Request a Feature</a>
</p>

<h4 align="center">

This is a PowerShell wrapper for ConnectWise Control

</h4>

<!-- Summary -->

This is a fork of @christaylorcodes CWC API module. It also includes some updates from @Luke-Williams9 and @twistedpro, so thanks to all those guys. 
This module makes it easy to leverage PowerShell Core to automate tasks in ConnectWise Control. Please see the original project for any further details.

<!-- Summary -->


## [Install](https://github.com/Jcblmao/ConnectWiseControlAPI/archive/refs/heads/master.zip)

 The module can be installed by unzipping the master zip into your PowerShell modules folder, or by running the following:

```powershell
# Define the module name and URL
$moduleName = "ConnectWiseControlAPI"
$moduleUrl = "https://raw.githubusercontent.com/Jcblmao/ConnectWiseControlAPI/master/ConnectWiseControlAPI/ConnectWiseControlAPI.psm1"

# Define the path to save the module
$modulePath = "$env:USERPROFILE\Documents\PowerShell\Modules\$moduleName"

# Create the directory if it doesn't exist
if (!(Test-Path -Path $modulePath)) {
    New-Item -ItemType Directory -Path $modulePath | Out-Null
}

# Download the module file
Invoke-WebRequest -Uri $moduleUrl -OutFile "$modulePath\$moduleName.psm1"

# Import the module
Import-Module "$modulePath\$moduleName.psm1"
```

## Requirements

* Now supports MFA! - <a href="https://github.com/Jcblmao/ConnectWiseControlAPI/blob/master/Examples/Connect_MFA.ps1">Connecting with MFA</a>

* Requires your Control server to use https.