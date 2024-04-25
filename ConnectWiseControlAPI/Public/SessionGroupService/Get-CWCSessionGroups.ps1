function Get-CWCSessionGroups {
    [CmdletBinding()]
    param (
    )

    $Endpoint = 'Services/SessionGroupService.ashx/session-groups'

    $WebRequestArguments = @{
        Endpoint = $Endpoint
        Method   = 'Get'
    }

    $response = Invoke-CWCWebRequest -Arguments $WebRequestArguments

    $inputString = $response -split "`n"

    # Remove the leading and trailing braces
    $inputString = $inputString.TrimStart("@{").TrimEnd("}")

    # Split the string into key-value pairs
    $kvPairs = $inputString -split "; "

    # Initialize the new hashtable
    $newHashTable = [ordered]@{}

    # Initialize the inner hashtable
    $innerHashTable = [ordered]@{}

    foreach ($pair in $kvPairs) {
        # Split the pair into key and value
        $kv = $pair -split "="
        $key = $kv[0].Trim()
        $value = $kv[1].Trim()

        # If the key is 'Name', set it as the key in the new hashtable
        # Otherwise, add it to the inner hashtable
        if ($key -eq 'Name') {
            $newHashTable[$value] = $innerHashTable
        } else {
            $innerHashTable[$key] = $value
        }
    }
    return $newHashTable
}