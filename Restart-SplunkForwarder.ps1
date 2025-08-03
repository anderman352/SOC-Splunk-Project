# Restart-SplunkForwarder.ps1
# Automatically checks and restarts the Splunk Universal Forwarder if it's not running

$serviceName = "SplunkForwarder"
$service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

if ($null -eq $service) {
    Write-Output "$(Get-Date): SplunkForwarder service not found."
    exit 1
}

if ($service.Status -ne 'Running') {
    Write-Output "$(Get-Date): Service not running. Attempting restart..."
    Start-Service $serviceName
    Start-Sleep -Seconds 10
    $service = Get-Service -Name $serviceName
    if ($service.Status -eq 'Running') {
        Write-Output "$(Get-Date): Successfully restarted SplunkForwarder."
    } else {
        Write-Output "$(Get-Date): Failed to restart SplunkForwarder."
    }
} else {
    Write-Output "$(Get-Date): SplunkForwarder is running normally."
}
# End of Restart-SplunkForwarder.ps1
# This script can be scheduled to run at regular intervals using Task Scheduler.
# Ensure that the script has the necessary permissions to manage services.
# Save this script as Restart-SplunkForwarder.ps1 and set up a scheduled task to run it periodically.