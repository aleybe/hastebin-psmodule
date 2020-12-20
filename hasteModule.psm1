function New-Haste {

    [Alias("hp")]
    [Alias("haste")]
    [Alias("shh")]
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipeline = $true
        )]
        [array]$InputValue,
        $CopyUrlToClipboard = $false
    )

    begin {
        [System.Collections.ArrayList]$dataArray = @()
    }

    process {
        $dataArray.Add($InputValue) >> $null
    }

    end {

        $uri = "https://hastebin.com/documents"
        $body = ($dataArray | Out-String).TrimEnd()

        $result = Invoke-RestMethod -Method Post -Body $body -Uri $uri
        $key = $result.key

        $returnable = "https://hastebin.com/$key"

        if ($CopyUrlToClipboard -eq $true) {
            Set-Clipboard $returnable
            return "$returnable copied to clipboard!"
        } else {
            return $returnable
        }
    }
}

function New-HasteWithCopy {
    [Alias("hastec")]
    [Alias("shc")]
    [Alias("yy")]
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipeline = $true
        )]
        [array]$InputValue
    )

    begin {
        [System.Collections.ArrayList]$dataArray = @()
    }

    process {
        $dataArray.Add($InputValue) >> $null
    }

    end {
        $covertedString = $dataArray | Out-String
        New-Haste $covertedString -CopyUrlToClipboard $true
    }
}