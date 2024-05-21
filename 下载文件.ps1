$url = "https://nodejs.org/download/release/v16.20.2/node-v16.20.2-x64.msi"
$file_path = "D:\Tools\node-v16.20.2-x64.msi"

# 检查文件路径是否存在，如果不存在则创建路径
if (-not (Test-Path -Path $file_path)) {
    $null = New-Item -ItemType Directory -Force -Path (Split-Path -Path $file_path)
}

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $file_path)

Write-Host "文件下载完成！"