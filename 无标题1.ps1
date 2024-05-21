# 导出计划任务的列表到文本文件
$taskList = Get-ScheduledTask | Select-Object -Property TaskName, State, Triggers |
            Where-Object { $_.Triggers -ne $null }

# 过滤触发器状态为"空闲状态"的计划任务
$idleTasks = $taskList | Where-Object { $_.Triggers.State -contains "MSFT_TaskIdleTrigger" }

# 创建文本文件
$filePath = ".\Desktop\tasklist.txt"

# 将结果输出到文本文件
$idleTasks | Out-File -FilePath $filePath

Write-Host "已将结果输出到文件: $filePath"