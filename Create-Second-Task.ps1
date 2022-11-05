$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-NoProfile -command cmd.exe /c \\MDTSERVER\DeploymentShare$\scripts\litetouch.vbs /tasksequenceID:APP-002 /skiptasksequence:YES'

$trigger =  New-ScheduledTaskTrigger -Once -AtStartup 

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "MDT-APP-002" -Description "MDT Second Task"