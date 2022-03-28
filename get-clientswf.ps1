If($ismacos){
    $localswf = "/Applications/TSOclient.app/Contents/Resources/client.swf"
}
Else{
    $localswf="$($env:localappdata)\Ubisoft\The Settlers Online\client.swf"
}
$remoteswf = "https://sirris.tsomaps.com/client.swf"
if (test-path $localswf){
    if (( Invoke-WebRequest -method "Head" $remoteswf -usebasicparsing| Select-Object -ExpandProperty Headers)["Content-length"] -ne (get-item $localswf).length){
        "Newer file present, downloading"
        Invoke-WebRequest -Uri $remoteswf -OutFile $localswf
    }
    Else{
        "No new file yet"
    }
}
Else{
    "local install not found"
}
