# define applications paths
$apps = @(
    "C:\Users\logan.fryer\Desktop\Microsoft Teams (work or school) - Shortcut.lnk"
    "C:\Users\logan.fryer\Desktop\Password Generator.lnk"
    "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
    "C:\Users\logan.fryer\Desktop\Microsoft Entra admin center (PWA).lnk"
    "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
    "C:\Users\logan.fryer\Desktop\Microsoft To Do - Shortcut.lnk"
    "C:\Users\logan.fryer\Desktop\Intel Unison.lnk"
)

# Open them in a loop
foreach ($appsPath in $apps) {
    Start-Process $appsPath
    Start-Sleep -Seconds .5
}