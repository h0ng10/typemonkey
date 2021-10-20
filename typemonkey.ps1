Add-Type -AssemblyName System.Windows.Forms
Add-Type -Assembly "Microsoft.VisualBasic"

$file = ".\jd-gui-windows-1.6.6.zip.base64"


[Microsoft.VisualBasic.Interaction]::AppActivate("test.txt - Editor")
Start-Sleep -Milliseconds 2000
$currentLineNumber = 1
$totalLineNumber = (Get-Content $file).Length

foreach($line in Get-Content $file) {
    Write-Output("Line $($currentLineNumber)/$($totalLineNumber)")
    [System.Windows.Forms.SendKeys]::SendWait($line) 
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")  
    $currentLineNumber += 1
}
