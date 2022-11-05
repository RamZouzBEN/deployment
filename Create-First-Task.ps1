$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-NoProfile -command cmd.exe /c \\MDTSERVER\DeploymentShare$\scripts\litetouch.vbs /tasksequenceID:APP-001 /skiptasksequence:YES'

$trigger =  New-ScheduledTaskTrigger -Once -AtStartup 

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "MDT-APP-001" -Description "MDT First Task"
