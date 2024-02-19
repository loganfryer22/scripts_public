# Load the necessary .NET assembly
Add-Type -AssemblyName System.Windows.Forms

# Path to Google Chrome
$chromePath = "C:\Users\logan.fryer\Desktop\PACS (Cloud Admin) - Chrome.lnk"

# List of URLs to open in new tabs
$urls = @("https://admin.microsoft.com/Adminportal/Home#/homepage", "https://admin.exchange.microsoft.com/#/", "https://admin.google.com/")

# Start Chrome with the first URL
Start-Process -FilePath $chromePath -ArgumentList $urls[0]

# Enters autofill creds
Start-Sleep -Seconds 3
[System.Windows.Forms.SendKeys]::SendWait("{enter}")
Start-Sleep -Seconds 3
[System.Windows.Forms.SendKeys]::SendWait("{enter}")

# Wait for Login to go through
Start-Sleep -Seconds 3

# Open the rest of the URLs in new tabs
for ($i = 1; $i -lt $urls.Length; $i++) {
    #wait for tab to load
    Start-Sleep -Seconds 1.25
    
    # Use Ctrl+T to open a new tab
    [System.Windows.Forms.SendKeys]::SendWait("^t")

    # Wait for the new tab to open
    Start-Sleep -Seconds 1

    # Use Ctrl+L to focus the address bar
    [System.Windows.Forms.SendKeys]::SendWait("^l")

    # Wait for the address bar to be focused
    Start-Sleep -Seconds .5

    # Type the URL and press Enter
    [System.Windows.Forms.SendKeys]::SendWait($urls[$i] + "{ENTER}")

}