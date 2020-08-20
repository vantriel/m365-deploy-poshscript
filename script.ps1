$msODTDCUri = "https://www.microsoft.com/en-us/download/details.aspx?id=49117"

function Get-ODTDownloadURL() {
    [CmdletBinding()]
    [OutputType([string])]
    param ()
    try {
        $res = Invoke-WebRequest -UseBasicParsing -Uri $msODTDCUri -ErrorAction SilentlyContinue
    }
    catch {
        Throw "Error while connecting to Microsoft download center: $_"
        Break
    }
    finally {
        $msODTDLUri = $res.links | Where-Object { $_.outerHTML -like "*click here to download manually*" }
        Write-Output $msODTDLUri.href
    }
}