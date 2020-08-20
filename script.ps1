$msODTDownloadUri="https://www.microsoft.com/en-us/download/details.aspx?id=49117"
$fallbackConfig="config-fallback.xml"

function Find-ODTDownloadURL(){
    try{
        $msDownloadPage = Invoke-WebRequest -Uri $msODTDownloadUri
        $msDownloadPage.Where
    }
    catch{
    }
    finally{
    }
}
