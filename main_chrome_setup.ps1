# Load the necessary .NET assembly
Add-Type -AssemblyName System.Windows.Forms

# Varibale paths and assignments
$tab = [char]9
$chromePath = "C:\Users\logan.fryer\Desktop\Logan - Chrome.lnk"

# List of URLs to open in new tabs
$urls = @("https://www.myworkday.com/pacs/d/home.htmld", "https://pacs.freshservice.com/a/tickets/view/new_and_my_open", "https://fitsupport.screenconnect.com/Host#Access/PACS%20Computers//056b72c3-2bdf-45bf-8a65-d4d01eea2962")

# Start Chrome with the first URL
Start-Process -FilePath $chromePath -ArgumentList $urls[0]

# Wait for Chrome to start
Start-Sleep -Seconds 1

# Open the rest of the URLs in new tabs
for ($i = 1; $i -lt $urls.Length; $i++) {
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