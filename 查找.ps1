$SoftwareNames = Get-Content -Path ".\Documents\SoftwareNames.txt"

# 列出软件相关的服务
Write-Host "=== 服务 ==="
foreach ($SoftwareName in $SoftwareNames) {
    $services = Get-CimInstance -ClassName Win32_Service | Where-Object { $_.Name -like "*$SoftwareName*" }
    if ($services) {
        Write-Host "软件名称: $SoftwareName"
        foreach ($service in $services) {
            Write-Host "服务名称: $($service.Name)"
        }
    }
}

# 列出软件相关的计划任务
Write-Host "=== 计划任务 ==="
foreach ($SoftwareName in $SoftwareNames) {
    $tasks = Get-ScheduledTask | Where-Object { $_.TaskName -like "*$SoftwareName*" }
    if ($tasks) {
        Write-Host "软件名称: $SoftwareName"
        foreach ($task in $tasks) {
            Write-Host "计划任务名称: $($task.TaskName)"
        }
    }
}