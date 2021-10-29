Add-Type -AssemblyName System.Windows.Forms

$file = ".\Sherlock.zip.base64"


Start-Sleep -Milliseconds 5000
$currentLineNumber = 1
$totalLineNumber = (Get-Content $file).Length

foreach($line in Get-Content $file) {
    Write-Output("Line $($currentLineNumber)/$($totalLineNumber)")
    [System.Windows.Forms.SendKeys]::SendWait($line) 
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")  
    $currentLineNumber += 1
}
