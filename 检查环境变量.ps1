$envPath = [Environment]::GetEnvironmentVariable('Path', 'Machine')

if ($envPath -match 'mysql') {
    Write-Host "Maven 环境变量配置成功！"
    Write-Host "环境变量内容："
    $envPath.Split(';') | ForEach-Object {
        if ($_ -match 'maven') {
            Write-Host $_
        }
    }
}
else {
    Write-Host "Maven 环境变量配置失败。"
}