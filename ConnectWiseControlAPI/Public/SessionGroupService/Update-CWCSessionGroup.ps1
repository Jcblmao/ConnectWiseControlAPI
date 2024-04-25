function Update-CWCSessionGroup {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory = $True)]
        [string]$GroupName,
        [Parameter(Mandatory = $True)]
        [string]$newName
    )

    $Endpoint = 'Services/SessionGroupService.ashx/UpdateSessionGroup'

    $Body = @"
    [
        {
            "SessionFilter": "CustomProperty1 LIKE 'Ahmad Tea' OR GuestMachineDomain = 'ahmaduk'",
            "SubgroupExpressions": "",
            "Name": "Ahmad Tea TEST",
            "SessionType": 2
        },
        {
            "Name": "Ahmad Tea 1",
            "SessionFilter": "CustomProperty1 LIKE 'Ahmad Tea' OR GuestMachineDomain = 'ahmaduk'",
            "SessionType": 2,
            "SubgroupExpressions": ""
        }
    ]
"@

#   $Body = @"
#    [
#        {
#            `"SessionFilter`": `"$SessionFilter`",
#            `"SubgroupExpressions`": `"`",
#            `"Name`": `"$GroupName`",
#            `"SessionType`": 2
#        },
#        {
#            `"Name`": `"$newName`",
#            `"SessionFilter`": `"$newSessionFilter`",
#            `"SessionType`": 2,
#            `"SubgroupExpressions`": `"`"
#        }
#    ]
# "@

    $WebRequestArguments = @{
        Endpoint = $Endpoint
        Body     = $Body
        Method   = 'Post'
    }
    
    $data = Invoke-CWCWebRequest -Arguments $WebRequestArguments
    $data
}
