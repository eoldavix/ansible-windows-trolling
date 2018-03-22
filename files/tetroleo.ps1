$url = "https://media.cntraveller.in/wp-content/uploads/2016/08/davidhasselhofflead-866x487.jpg"
$filename = "C:\image.jpg"
Invoke-WebRequest $url -OutFile $filename
set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value $filename
rundll32.exe user32.dll, UpdatePerUserSystemParameters
